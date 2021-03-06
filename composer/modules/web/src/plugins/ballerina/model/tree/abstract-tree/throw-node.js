/**
 * Copyright (c) 2017, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 *
 * WSO2 Inc. licenses this file to you under the Apache License,
 * Version 2.0 (the "License"); you may not use this file except
 * in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

import _ from 'lodash';
import StatementNode from '../statement-node';

class AbstractThrowNode extends StatementNode {


    setExpressions(newValue, silent, title) {
        const oldValue = this.expressions;
        title = (_.isNil(title)) ? `Modify ${this.kind}` : title;
        this.expressions = newValue;

        this.expressions.parent = this;

        if (!silent) {
            this.trigger('tree-modified', {
                origin: this,
                type: 'modify-node',
                title,
                data: {
                    attributeName: 'expressions',
                    newValue,
                    oldValue,
                },
            });
        }
    }

    getExpressions() {
        return this.expressions;
    }



}

export default AbstractThrowNode;

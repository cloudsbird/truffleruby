/*
 * Copyright (c) 2013, 2025 Oracle and/or its affiliates. All rights reserved. This
 * code is released under a tri EPL/GPL/LGPL license. You can use it,
 * redistribute it and/or modify it under the terms of the:
 *
 * Eclipse Public License version 2.0, or
 * GNU General Public License version 2, or
 * GNU Lesser General Public License version 2.1.
 */
package org.truffleruby.language.control;

import org.truffleruby.language.RubyContextSourceNode;

import com.oracle.truffle.api.frame.VirtualFrame;
import org.truffleruby.language.RubyNode;

public final class RetryNode extends RubyContextSourceNode {

    @Override
    public Object execute(VirtualFrame frame) {
        throw new RetryException();
    }

    @Override
    public RubyNode cloneUninitialized() {
        var copy = new RetryNode();
        return copy.copyFlags(this);
    }

}

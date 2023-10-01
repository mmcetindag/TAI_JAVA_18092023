package com.hbook.spring.HBOOK.core.result;

public class ErrorResult extends Result{

    public ErrorResult(String message) {
        super(false, message);
    }
}

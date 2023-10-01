package com.hbook.spring.HBOOK.core.result;

public class SuccessDataResult<T> extends DataResult<T>{

    public SuccessDataResult(T data, String msg) {
        super(data, true, msg);
    }
}

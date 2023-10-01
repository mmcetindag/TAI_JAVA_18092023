package com.hbook.spring.HBOOK.core.result;

public class DataResult<T> extends Result {
    private T data;

    public DataResult(T data, boolean status , String msg){
        super(status,msg);
        this.data = data;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

}

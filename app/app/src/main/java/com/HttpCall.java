package com.mysms;

import java.util.HashMap;

/**
 * HttpCall class for handling HTTP requests.
 * Created by pethoalpar on 4/16/2016.
 */
public class HttpCall {

    public static final int GET = 1;
    public static final int POST = 2;

    private String url;
    private int methodtype;
    private HashMap<String, String> params;

    // Constructor
    public HttpCall() {
        this.params = new HashMap<>(); // Initialize params
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public int getMethodtype() {
        return methodtype;
    }

    public void setMethodtype(int methodtype) {
        if (methodtype == GET || methodtype == POST) {
            this.methodtype = methodtype;
        } else {
            throw new IllegalArgumentException("Invalid method type. Use HttpCall.GET or HttpCall.POST.");
        }
    }

    public HashMap<String, String> getParams() {
        return params;
    }

    public void setParams(HashMap<String, String> params) {
        this.params = params;
    }
}

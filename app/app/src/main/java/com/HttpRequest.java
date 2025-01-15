package com.mysms;

import android.os.AsyncTask;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/**
 * HttpRequest class for handling HTTP requests asynchronously.
 * Created by pethoalpar on 4/16/2016.
 */
public class HttpRequest extends AsyncTask<HttpCall, String, String> {

    private static final String UTF_8 = "UTF-8";

    @Override
    protected String doInBackground(HttpCall... params) {
        HttpURLConnection urlConnection = null;
        HttpCall httpCall = params[0];
        StringBuilder response = new StringBuilder();
        try {
            String dataParams = getDataString(httpCall.getParams(), httpCall.getMethodtype());
            URL url = new URL(httpCall.getMethodtype() == HttpCall.GET ? httpCall.getUrl() + dataParams : httpCall.getUrl());
            urlConnection = (HttpURLConnection) url.openConnection();
            urlConnection.setRequestMethod(httpCall.getMethodtype() == HttpCall.GET ? "GET" : "POST");
            urlConnection.setReadTimeout(10000); // milliseconds
            urlConnection.setConnectTimeout(15000); // milliseconds

            if (httpCall.getParams() != null && httpCall.getMethodtype() == HttpCall.POST) {
                try (OutputStream os = urlConnection.getOutputStream();
                     BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, UTF_8))) {
                    writer.write(dataParams);
                    writer.flush();
                }
            }

            int responseCode = urlConnection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                String line;
                try (BufferedReader br = new BufferedReader(new InputStreamReader(urlConnection.getInputStream()))) {
                    while ((line = br.readLine()) != null) {
                        response.append(line);
                    }
                }
            } else {
                // Handle non-200 response codes
                response.append("Error: ").append(responseCode);
            }
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();

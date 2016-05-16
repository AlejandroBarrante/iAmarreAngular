/*
 * Copyright (c) 2015 by Rafael Angel Aznar Aparici (rafaaznar at gmail dot com)
 * 
 * openAUSIAS: The stunning micro-library that helps you to develop easily 
 *             AJAX web applications by using Java and jQuery
 * openAUSIAS is distributed under the MIT License (MIT)
 * Sources at https://github.com/rafaelaznar/openAUSIAS
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
package net.daw.bean.implementation;

import com.google.gson.annotations.Expose;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.daw.bean.publicinterface.GenericBean;
import net.daw.helper.statics.EncodingUtilHelper;

public class EditorialBean implements GenericBean {

    @Expose
    private Integer id;
    @Expose
    private String nombre = "";
    @Expose
    private String bio = "";
    @Expose
    private String website = "";
    @Expose
    private String imagen = "";

    public EditorialBean() {
        this.id = 0;
    }

    public EditorialBean(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    

    // ---------------------------------------------
    public String toJson(Boolean expand) {
        String strJson = "{";
        strJson += "id:" + id + ",";
        strJson += "nombre:" + nombre + ",";
        strJson += "bio:" + bio + ",";
        strJson += "website:" + website  + ",";
        strJson += "imagen:" + imagen  + ",";
        strJson += "}";
        return strJson;

    }

    @Override
    public String getColumns() {
        String strColumns = "";
        strColumns += "id,";
        strColumns += "nombre,";
        strColumns += "bio,";
        strColumns += "website,";
        strColumns += "imagen";

        return strColumns;
    }

    @Override
    public String getValues() {
        String strColumns = "";
        strColumns += id.toString() + ",";
        strColumns += EncodingUtilHelper.quotate(nombre) + ",";
        strColumns += EncodingUtilHelper.quotate(bio) + ",";
        strColumns += EncodingUtilHelper.quotate(website)  + ",";
        strColumns += EncodingUtilHelper.quotate(imagen);

        return strColumns;
    }

    @Override
    public String toPairs() {
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "nombre=" + EncodingUtilHelper.quotate(nombre) + ",";
        strPairs += "bio=" + EncodingUtilHelper.quotate(bio) + ",";
        strPairs += "website=" + EncodingUtilHelper.quotate(website)  + ",";
        strPairs += "imagen=" + EncodingUtilHelper.quotate(imagen);

        return strPairs;
    }

    @Override
    public EditorialBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        this.setId(oResultSet.getInt("id"));
        this.setNombre(oResultSet.getString("nombre"));
        this.setBio(oResultSet.getString("bio"));
        this.setWebsite(oResultSet.getString("website"));
        this.setImagen(oResultSet.getString("imagen"));
        return this;

    }

}

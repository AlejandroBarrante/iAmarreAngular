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

/**
 *
 * @author abarrante
 */
public class AutorBean implements GenericBean {

    @Expose
    private Integer id;
    @Expose
    private String nombre = "";
    @Expose
    private Integer fechaNac = null;
    @Expose
    private String bio = "";
    @Expose
    private String website = "";

    /**
     *
     */
    public AutorBean() {
        this.id = 0;
    }

    /**
     *
     * @param id
     */
    public AutorBean(Integer id) {
        this.id = id;
    }

    /**
     *
     * @return id
     */
    public Integer getId() {
        return id;
    }

    /**
     *
     * @param id
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     *
     * @return nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     *
     * @param nombre
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     *
     * @return fechaNac
     */
    public Integer getFechaNac() {
        return fechaNac;
    }

    /**
     *
     * @param fechaNac
     */
    public void setFechaNac(Integer fechaNac) {
        this.fechaNac = fechaNac;
    }

    /**
     *
     * @return bio
     */
    public String getBio() {
        return bio;
    }

    /**
     *
     * @param bio
     */
    public void setBio(String bio) {
        this.bio = bio;
    }

    /**
     *
     * @return website
     */
    public String getWebsite() {
        return website;
    }

    /**
     *
     * @param website
     */
    public void setWebsite(String website) {
        this.website = website;
    }

    // ---------------------------------------------
    /**
     *
     * @param expand
     * @return strJson
     */
    public String toJson(Boolean expand) {
        String strJson = "{";
        strJson += "id:" + id + ",";
        strJson += "nombre:" + nombre + ",";
        strJson += "fechaNac:" + fechaNac + ",";
        strJson += "bio:" + bio + ",";
        strJson += "website:" + website + ",";
        strJson += "}";
        return strJson;
    }

    /**
     *
     * @return strColumns
     */
    @Override
    public String getColumns() {
        String strColumns = "";
        strColumns += "id,";
        strColumns += "nombre,";
        strColumns += "fechaNac,";
        strColumns += "bio,";
        strColumns += "website";

        return strColumns;
    }

    /**
     *
     * @return strColumns
     */
    @Override
    public String getValues() {
        String strColumns = "";
        strColumns += id.toString() + ",";
        strColumns += EncodingUtilHelper.quotate(nombre) + ",";
        strColumns += fechaNac + ",";
        strColumns += EncodingUtilHelper.quotate(bio) + ",";
        strColumns += EncodingUtilHelper.quotate(website);

        return strColumns;
    }

    /**
     *
     * @return strPairs
     */
    @Override
    public String toPairs() {
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "nombre=" + EncodingUtilHelper.quotate(nombre) + ",";
        strPairs += "fechaNac=" + fechaNac + ",";
        strPairs += "bio=" + EncodingUtilHelper.quotate(bio) + ",";
        strPairs += "website=" + EncodingUtilHelper.quotate(website);

        return strPairs;
    }

    /**
     *
     * @param oResultSet
     * @param pooledConnection
     * @param expand
     * @return this
     * @throws SQLException
     * @throws Exception
     */
    @Override
    public AutorBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand)
            throws SQLException, Exception {
        this.setId(oResultSet.getInt("id"));
        this.setNombre(oResultSet.getString("nombre"));
        this.setFechaNac(oResultSet.getInt("fechaNac"));
        this.setBio(oResultSet.getString("bio"));
        this.setWebsite(oResultSet.getString("website"));

        return this;
    }

}

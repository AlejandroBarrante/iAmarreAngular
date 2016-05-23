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
 * @author Alejandro Barrante Cano
 */
public class DependenciaLenguajeBean implements GenericBean {

    @Expose
    private Integer id;
    @Expose
    private String descripcion = "";

    /**
     *
     */
    public DependenciaLenguajeBean() {
        this.id = 0;
    }

    /**
     *
     * @param id
     */
    public DependenciaLenguajeBean(Integer id) {
        this.id = id;
    }

    /**
     *
     * @return
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
     * @return
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     *
     * @param descripcion
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    // ---------------------------------------------
    /**
     * Método JSONeador
     *
     * @param expand
     * @return strJson
     */
    public String toJson(Boolean expand) {
        String strJson = "{";
        strJson += "id:" + id + ",";
        strJson += "descripcion:" + descripcion;
        strJson += "}";
        return strJson;

    }

    /**
     * Método que obtiene las columnas en caso de NEW
     *
     * @return strColumns
     */
    @Override
    public String getColumns() {
        String strColumns = "";
        strColumns += "id,";
        strColumns += "descripcion";

        return strColumns;
    }

    /**
     * Método que recupera los valores introducidos en un formulario
     *
     * @return strColumns
     */
    @Override
    public String getValues() {
        String strColumns = "";
        strColumns += id.toString() + ",";
        strColumns += EncodingUtilHelper.quotate(descripcion);

        return strColumns;
    }

    /**
     * Método que obtiene las columnas en caso de EDIT
     *
     * @return strPairs
     */
    @Override
    public String toPairs() {
        String strPairs = "";
        strPairs += "id=" + id + ",";
        strPairs += "descripcion=" + EncodingUtilHelper.quotate(descripcion);

        return strPairs;
    }

    /**
     * Método que rellena el POJO
     *
     * @param oResultSet
     * @param pooledConnection
     * @param expand
     * @return this
     * @throws SQLException
     * @throws Exception
     */
    @Override
    public DependenciaLenguajeBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        this.setId(oResultSet.getInt("id"));
        this.setDescripcion(oResultSet.getString("descripcion"));

        return this;

    }

}

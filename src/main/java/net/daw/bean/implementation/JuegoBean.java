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
import net.daw.dao.implementation.DependenciaLenguajeDao;
import net.daw.dao.implementation.EditorialDao;
import net.daw.helper.statics.EncodingUtilHelper;

/**
 *
 * @author Alejandro Barrante Cano
 */
public class JuegoBean implements GenericBean {

    @Expose
    private Integer id;
    @Expose
    private String titulo = "";
    @Expose
    private Integer fechaPublicacion = 0;
    @Expose
    private Integer jugMin = 0;
    @Expose
    private Integer jugMax = 0;
    @Expose
    private Integer duracion = 0;
    @Expose
    private String descripcion = "";
    @Expose
    private Integer edad = 0;
    @Expose
    private String website = "";
    @Expose
    private String imagen = "";
    @Expose
    private String imagen2 = "";
    @Expose(serialize = false)
    private Integer id_editorial = 0;
    @Expose(deserialize = false)
    private EditorialBean obj_editorial = null;
    @Expose(serialize = false)
    private Integer id_dependencialenguaje = 0;
    @Expose(deserialize = false)
    private DependenciaLenguajeBean obj_dependencialenguaje = null;

    /**
     *
     */
    public JuegoBean() {
        this.id = 0;
    }

    /**
     *
     * @param id
     */
    public JuegoBean(Integer id) {
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
    public String getTitulo() {
        return titulo;
    }

    /**
     *
     * @param titulo
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     *
     * @return
     */
    public Integer getFechaPublicacion() {
        return fechaPublicacion;
    }

    /**
     *
     * @param fechaPublicacion
     */
    public void setFechaPublicacion(Integer fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    /**
     *
     * @return
     */
    public Integer getJugMin() {
        return jugMin;
    }

    /**
     *
     * @param jugMin
     */
    public void setJugMin(Integer jugMin) {
        this.jugMin = jugMin;
    }

    /**
     *
     * @return
     */
    public Integer getJugMax() {
        return jugMax;
    }

    /**
     *
     * @param jugMax
     */
    public void setJugMax(Integer jugMax) {
        this.jugMax = jugMax;
    }

    /**
     *
     * @return
     */
    public Integer getDuracion() {
        return duracion;
    }

    /**
     *
     * @param duracion
     */
    public void setDuracion(Integer duracion) {
        this.duracion = duracion;
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

    /**
     *
     * @return
     */
    public Integer getEdad() {
        return edad;
    }

    /**
     *
     * @param edad
     */
    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    /**
     *
     * @return
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

    /**
     *
     * @return
     */
    public String getImagen() {
        return imagen;
    }

    /**
     *
     * @param imagen
     */
    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    /**
     *
     * @return
     */
    public String getImagen2() {
        return imagen2;
    }

    /**
     *
     * @param imagen2
     */
    public void setImagen2(String imagen2) {
        this.imagen2 = imagen2;
    }

    /**
     *
     * @return
     */
    public Integer getId_editorial() {
        return id_editorial;
    }

    /**
     *
     * @param id_editorial
     */
    public void setId_editorial(Integer id_editorial) {
        this.id_editorial = id_editorial;
    }

    /**
     *
     * @return
     */
    public EditorialBean getObj_editorial() {
        return obj_editorial;
    }

    /**
     *
     * @param obj_editorial
     */
    public void setObj_editorial(EditorialBean obj_editorial) {
        this.obj_editorial = obj_editorial;
    }

    /**
     *
     * @return
     */
    public Integer getId_dependencialenguaje() {
        return id_dependencialenguaje;
    }

    /**
     *
     * @param id_dependencialenguaje
     */
    public void setId_dependencialenguaje(Integer id_dependencialenguaje) {
        this.id_dependencialenguaje = id_dependencialenguaje;
    }

    /**
     *
     * @return
     */
    public DependenciaLenguajeBean getObj_dependencialenguaje() {
        return obj_dependencialenguaje;
    }

    /**
     *
     * @param obj_dependencialenguaje
     */
    public void setObj_dependencialenguaje(DependenciaLenguajeBean obj_dependencialenguaje) {
        this.obj_dependencialenguaje = obj_dependencialenguaje;
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
        strJson += "titulo:" + titulo + ",";
        strJson += "fechaPublicacion:" + fechaPublicacion + ",";
        strJson += "jugMin:" + jugMin + ",";
        strJson += "jugMax:" + jugMax + ",";
        strJson += "duracion:" + duracion + ",";
        strJson += "descripcion:" + descripcion + ",";
        strJson += "edad:" + edad + ",";
        strJson += "website:" + website + ",";
        strJson += "imagen" + imagen + ",";
        strJson += "imagen2" + imagen2 + ",";
        if (expand) {
            strJson += "obj_editorial:" + obj_editorial.toJson(false) + ",";
            strJson += "obj_dependencialenguaje:" + obj_dependencialenguaje.toJson(false) + ",";
        } else {
            strJson += "id_editorial:" + id_editorial + ",";
            strJson += "id_dependencialenguaje:" + id_dependencialenguaje + ",";
        }
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
        strColumns += "titulo,";
        strColumns += "fechaPublicacion,";
        strColumns += "jugMin,";
        strColumns += "jugMax,";
        strColumns += "duracion,";
        strColumns += "descripcion,";
        strColumns += "edad,";
        strColumns += "website,";
        strColumns += "imagen,";
        strColumns += "imagen2,";
        strColumns += "id_editorial,";
        strColumns += "id_dependencialenguaje";

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
        strColumns += EncodingUtilHelper.quotate(titulo) + ",";
        strColumns += fechaPublicacion.toString() + ",";
        strColumns += jugMin.toString() + ",";
        strColumns += jugMax.toString() + ",";
        strColumns += duracion.toString() + ",";
        strColumns += EncodingUtilHelper.quotate(descripcion) + ",";
        strColumns += edad.toString() + ",";
        strColumns += EncodingUtilHelper.quotate(website) + ",";
        strColumns += EncodingUtilHelper.quotate(imagen) + ",";
        strColumns += EncodingUtilHelper.quotate(imagen2) + ",";
        strColumns += id_editorial + ",";
        strColumns += id_dependencialenguaje;

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
        strPairs += "titulo=" + EncodingUtilHelper.quotate(titulo) + ",";
        strPairs += "fechaPublicacion=" + fechaPublicacion + ",";
        strPairs += "jugMin=" + jugMin + ",";
        strPairs += "jugMax=" + jugMax + ",";
        strPairs += "duracion=" + duracion + ",";
        strPairs += "descripcion=" + EncodingUtilHelper.quotate(descripcion) + ",";
        strPairs += "edad=" + edad + ",";
        strPairs += "website=" + EncodingUtilHelper.quotate(website) + ",";
        strPairs += "imagen=" + EncodingUtilHelper.quotate(imagen) + ",";
        strPairs += "imagen2=" + EncodingUtilHelper.quotate(imagen2) + ",";
        strPairs += "id_editorial=" + id_editorial + ",";
        strPairs += "id_dependencialenguaje=" + id_dependencialenguaje;

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
    public JuegoBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        this.setId(oResultSet.getInt("id"));
        this.setTitulo(oResultSet.getString("titulo"));
        this.setFechaPublicacion(oResultSet.getInt("fechaPublicacion"));
        this.setJugMin(oResultSet.getInt("jugMin"));
        this.setJugMax(oResultSet.getInt("jugMax"));
        this.setDuracion(oResultSet.getInt("duracion"));
        this.setDescripcion(oResultSet.getString("descripcion"));
        this.setEdad(oResultSet.getInt("edad"));
        this.setWebsite(oResultSet.getString("website"));
        this.setImagen(oResultSet.getString("imagen"));
        this.setImagen2(oResultSet.getString("imagen2"));
        if (expand > 0) {
            EditorialBean oEditorialBean = new EditorialBean();
            EditorialDao oEditorialDao = new EditorialDao(pooledConnection);
            oEditorialBean.setId(oResultSet.getInt("id_editorial"));
            oEditorialBean = oEditorialDao.get(oEditorialBean, expand - 1);
            this.setObj_editorial(oEditorialBean);
        } else {
            this.setId_editorial(oResultSet.getInt("id_editorial"));
        }
        if (expand > 0) {
            DependenciaLenguajeBean oDepLenguajeBean = new DependenciaLenguajeBean();
            DependenciaLenguajeDao oDepLenguajeDao = new DependenciaLenguajeDao(pooledConnection);
            oDepLenguajeBean.setId(oResultSet.getInt("id_dependencialenguaje"));
            oDepLenguajeBean = oDepLenguajeDao.get(oDepLenguajeBean, expand - 1);
            this.setObj_dependencialenguaje(oDepLenguajeBean);
        } else {
            this.setId_dependencialenguaje(oResultSet.getInt("id_dependencialenguaje"));
        }

        return this;

    }

}

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
import java.util.ArrayList;
import net.daw.bean.publicinterface.GenericBean;
import net.daw.dao.implementation.AutorDao;
import net.daw.dao.implementation.CategoriaDao;
import net.daw.dao.implementation.DependenciaLenguajeDao;
import net.daw.dao.implementation.EditorialDao;
import net.daw.dao.implementation.IlustradorDao;
import net.daw.helper.statics.EncodingUtilHelper;

public class TotalJuegoBean implements GenericBean {

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
    @Expose(serialize = false)
    private Integer id_editorial = 0;
    @Expose(deserialize = false)
    private EditorialBean obj_editorial = null;
    @Expose(serialize = false)
    private Integer id_dependencialenguaje = 0;
    @Expose(deserialize = false)
    private DependenciaLenguajeBean obj_dependencialenguaje = null;

    // TABLAS MIXTAS
    @Expose(deserialize = false)
    private ArrayList<AutorBean> array_autor = null;

    @Expose(deserialize = false)
    private ArrayList<IlustradorBean> array_ilustrador = null;

    @Expose(deserialize = false)
    private ArrayList<CategoriaBean> array_categoria = null;

    public TotalJuegoBean() {
        this.id = 0;
    }

    public TotalJuegoBean(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public Integer getFechaPublicacion() {
        return fechaPublicacion;
    }

    public void setFechaPublicacion(Integer fechaPublicacion) {
        this.fechaPublicacion = fechaPublicacion;
    }

    public Integer getJugMin() {
        return jugMin;
    }

    public void setJugMin(Integer jugMin) {
        this.jugMin = jugMin;
    }

    public Integer getJugMax() {
        return jugMax;
    }

    public void setJugMax(Integer jugMax) {
        this.jugMax = jugMax;
    }

    public Integer getDuracion() {
        return duracion;
    }

    public void setDuracion(Integer duracion) {
        this.duracion = duracion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getEdad() {
        return edad;
    }

    public void setEdad(Integer edad) {
        this.edad = edad;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public Integer getId_editorial() {
        return id_editorial;
    }

    public void setId_editorial(Integer id_editorial) {
        this.id_editorial = id_editorial;
    }

    public EditorialBean getObj_editorial() {
        return obj_editorial;
    }

    public void setObj_editorial(EditorialBean obj_editorial) {
        this.obj_editorial = obj_editorial;
    }

    public Integer getId_dependencialenguaje() {
        return id_dependencialenguaje;
    }

    public void setId_dependencialenguaje(Integer id_dependencialenguaje) {
        this.id_dependencialenguaje = id_dependencialenguaje;
    }

    public DependenciaLenguajeBean getObj_dependencialenguaje() {
        return obj_dependencialenguaje;
    }

    public void setObj_dependencialenguaje(DependenciaLenguajeBean obj_dependencialenguaje) {
        this.obj_dependencialenguaje = obj_dependencialenguaje;
    }

    public ArrayList<AutorBean> getArray_autor() {
        return array_autor;
    }

    public void setArray_autor(ArrayList<AutorBean> array_autor) {
        this.array_autor = array_autor;
    }

    public ArrayList<IlustradorBean> getArray_ilustrador() {
        return array_ilustrador;
    }

    public void setArray_ilustrador(ArrayList<IlustradorBean> array_ilustrador) {
        this.array_ilustrador = array_ilustrador;
    }

    public ArrayList<CategoriaBean> getArray_categoria() {
        return array_categoria;
    }

    public void setArray_categoria(ArrayList<CategoriaBean> array_categoria) {
        this.array_categoria = array_categoria;
    }

    // ---------------------------------------------
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
        strColumns += "depLenguaje,";
        strColumns += "website,";
        strColumns += "id_editorial,";
        strColumns += "id_dependencialenguaje,";

        return strColumns;
    }

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
        strColumns += id_editorial + ",";
        strColumns += id_dependencialenguaje;

        return strColumns;
    }

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
        strPairs += "id_editorial=" + id_editorial + ",";
        strPairs += "id_dependencialenguaje=" + id_dependencialenguaje;

        return strPairs;
    }

    public TotalJuegoBean fillTotal(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        this.setId(oResultSet.getInt("id"));
        this.setTitulo(oResultSet.getString("titulo"));
        this.setFechaPublicacion(oResultSet.getInt("fechaPublicacion"));
        this.setJugMin(oResultSet.getInt("jugMin"));
        this.setJugMax(oResultSet.getInt("jugMax"));
        this.setDuracion(oResultSet.getInt("duracion"));
        this.setDescripcion(oResultSet.getString("descripcion"));
        this.setEdad(oResultSet.getInt("edad"));
        this.setWebsite(oResultSet.getString("website"));

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

        if (expand > 0) {

            AutorDao oAutorDao = new AutorDao(pooledConnection);
            this.setArray_autor(oAutorDao.getAllJuegoAutor(this.getId(), null, null, expand - 1));
        }

        if (expand > 0) {

            IlustradorDao oIlustradorDao = new IlustradorDao(pooledConnection);
            this.setArray_ilustrador(oIlustradorDao.getAllJuegoIlustrador(this.getId(), null, null, expand - 1));
        }

        if (expand > 0) {

            CategoriaDao oCategoriaDao = new CategoriaDao(pooledConnection);
            this.setArray_categoria(oCategoriaDao.getAllJuegoCategoria(this.getId(), null, null, expand - 1));
        }

        return this;

    }

    @Override
    public GenericBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand) throws SQLException, Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
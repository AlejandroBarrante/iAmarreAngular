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
package net.daw.dao.implementation;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import net.daw.bean.implementation.CategoriaJuegoBean;
import net.daw.dao.publicinterface.TableDaoInterface;
import net.daw.dao.publicinterface.ViewDaoInterface;
import net.daw.data.implementation.MysqlDataSpImpl;
import net.daw.helper.statics.ExceptionBooster;
import net.daw.helper.statics.FilterBeanHelper;
import net.daw.helper.statics.SqlBuilder;

/**
 *
 * @author Alejandro Barrante Cano
 */
public class CategoriaJuegoDao implements ViewDaoInterface<CategoriaJuegoBean>, TableDaoInterface<CategoriaJuegoBean> {

    private String strSQL = "SELECT cj.id_juego, cj.id_categoria, c.nombre, c.descripcion, j.titulo, j.fechaPublicacion, j.jugMin, j.jugMax, j.edad, j.duracion FROM categoriajuego cj, juego j, categoria c WHERE j.id = cj.id_juego AND c.id = cj.id_categoria AND 1=1  ";
    private MysqlDataSpImpl oMysql = null;
    private Connection oConnection = null;
    private String strTable = "categoriaJuego";

    /**
     *
     * @param oPooledConnection
     * @throws Exception
     */
    public CategoriaJuegoDao(Connection oPooledConnection) throws Exception {
        try {
            oConnection = oPooledConnection;
            oMysql = new MysqlDataSpImpl(oConnection);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":constructor ERROR: " + ex.getMessage()));
        }
    }

    /**
     * Método GETALL CategoriaJuego
     *
     * @param alFilter
     * @param hmOrder
     * @param expand
     * @return arrCategoriaJuego
     * @throws Exception
     */
    @Override
    public ArrayList<CategoriaJuegoBean> getAll(ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        ArrayList<CategoriaJuegoBean> arrCategoriaJuego = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    CategoriaJuegoBean oCategoriaJuegoBean = new CategoriaJuegoBean();
                    arrCategoriaJuego.add(oCategoriaJuegoBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrCategoriaJuego;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE CATEGORÍA Y JUEGO
     *
     * @param id_categoria
     * @param intRegsPerPag
     * @param intPage
     * @param hmFilter
     * @param hmOrder
     * @param expand
     * @return arrCategoriaJuegoBean
     * @throws Exception
     */
    public ArrayList<CategoriaJuegoBean> getPageCategoria(int id_categoria, int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND cj.id_categoria=" + id_categoria;
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
        ArrayList<CategoriaJuegoBean> arrCategoriaJuegoBean = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    CategoriaJuegoBean oCategoriaJuegoBean = new CategoriaJuegoBean();
                    arrCategoriaJuegoBean.add(oCategoriaJuegoBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrCategoriaJuegoBean;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE CATEGORÍA Y JUEGO
     *
     * @param id_categoria
     * @param intRegsPerPag
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getPagesCategoria(int id_categoria, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND cj.id_categoria=" + id_categoria;
        int pages = 0;
        try {
            pages = oMysql.getPages(strSQL, intRegsPerPag);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE CATEGORÍA Y JUEGO
     *
     * @param id_categoria
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getCountCategoria(int id_categoria, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND cj.id_categoria=" + id_categoria;
        int pages = 0;
        try {
            pages = oMysql.getCount(strSQL);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE CATEGORÍA Y JUEGO
     *
     * @param id_juego
     * @param intRegsPerPag
     * @param intPage
     * @param hmFilter
     * @param hmOrder
     * @param expand
     * @return arrCategoriaJuegoBean
     * @throws Exception
     */
    public ArrayList<CategoriaJuegoBean> getPageJuego(int id_juego, int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        strSQL += "AND cj.id_juego=" + id_juego;
        strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
        ArrayList<CategoriaJuegoBean> arrCategoriaJuegoBean = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    CategoriaJuegoBean oCategoriaJuegoBean = new CategoriaJuegoBean();
                    arrCategoriaJuegoBean.add(oCategoriaJuegoBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrCategoriaJuegoBean;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE CATEGORÍA Y JUEGO
     *
     * @param id_juego
     * @param intRegsPerPag
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getPagesJuego(int id_juego, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND cj.id_juego=" + id_juego;
        int pages = 0;
        try {
            pages = oMysql.getPages(strSQL, intRegsPerPag);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE CATEGORÍA Y JUEGO
     *
     * @param id_juego
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getCountJuego(int id_juego, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND cj.id_juego=" + id_juego;
        int pages = 0;
        try {
            pages = oMysql.getCount(strSQL);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * Método SET CategoriaJuego
     *
     * @param oBean
     * @return iResult
     * @throws Exception
     */
    @Override
    public Integer set(CategoriaJuegoBean oBean) throws Exception {

        Integer iResult = null;
        try {

            strSQL = "INSERT INTO " + strTable + " ";
            strSQL += "(" + oBean.getColumns() + ")";
            strSQL += "VALUES(" + oBean.getValues() + ")";
            iResult = oMysql.executeInsertSQL(strSQL);

        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":set ERROR: " + ex.getMessage()));
        }
        return iResult;
    }

    // --------------------------------
    // MÉTODOS NO IMPLEMENTADOS
    /**
     *
     * @param id
     * @return
     * @throws Exception
     */
    @Override
    public Integer remove(Integer id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @param oBean
     * @param expand
     * @return
     * @throws Exception
     */
    @Override
    public CategoriaJuegoBean get(CategoriaJuegoBean oBean, Integer expand) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @param intRegsPerPag
     * @param alFilter
     * @return
     * @throws Exception
     */
    @Override
    public int getPages(int intRegsPerPag, ArrayList<FilterBeanHelper> alFilter) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @param alFilter
     * @return
     * @throws Exception
     */
    @Override
    public int getCount(ArrayList<FilterBeanHelper> alFilter) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @param intRegsPerPag
     * @param intPage
     * @param alFilter
     * @param hmOrder
     * @param expand
     * @return
     * @throws Exception
     */
    @Override
    public ArrayList<CategoriaJuegoBean> getPage(int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

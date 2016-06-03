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
import net.daw.bean.implementation.JuegoBean;
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
public class JuegoDao implements ViewDaoInterface<JuegoBean>, TableDaoInterface<JuegoBean> {

    private String strTable = "juego";
    private String strSQL = "select * from juego where 1=1 ";
    private MysqlDataSpImpl oMysql = null;
    private Connection oConnection = null;

    /**
     *
     * @param oPooledConnection
     * @throws Exception
     */
    public JuegoDao(Connection oPooledConnection) throws Exception {
        try {
            oConnection = oPooledConnection;
            oMysql = new MysqlDataSpImpl(oConnection);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":constructor ERROR: " + ex.getMessage()));
        }
    }

    /**
     * Método GET Juego
     *
     * @param oJuegoBean
     * @param expand
     * @return oJuegoBean
     * @throws Exception
     */
    @Override
    public JuegoBean get(JuegoBean oJuegoBean, Integer expand) throws Exception {
        if (oJuegoBean.getId() > 0) {
            try {
                ResultSet oResultSet = oMysql.getAllSql(strSQL + " And id= " + oJuegoBean.getId() + " ");
                if (oResultSet != null) {
                    while (oResultSet.next()) {
                        oJuegoBean = oJuegoBean.fill(oResultSet, oConnection, expand);
                    }
                }
            } catch (Exception ex) {
                ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
            }
        } else {
            oJuegoBean.setId(0);
        }
        return oJuegoBean;
    }

    /**
     * Métodos para sacar listados de juegos
     *
     * @param intRegsPerPag
     * @param intPage
     * @param hmFilter
     * @param hmOrder
     * @param expand
     * @return arrJuego
     * @throws Exception
     */
    @Override
    public ArrayList<JuegoBean> getPage(int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter,
            HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
        ArrayList<JuegoBean> arrJuego = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    JuegoBean oJuegoBean = new JuegoBean();
                    arrJuego.add(oJuegoBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrJuego;
    }

    /**
     * Métodos para sacar listados de juegos
     *
     * @param intRegsPerPag
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    @Override
    public int getPages(int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        int pages = 0;
        try {
            pages = oMysql.getPages(strSQL, intRegsPerPag);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * Métodos para sacar listados de juegos
     *
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    @Override
    public int getCount(ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        int pages = 0;
        try {
            pages = oMysql.getCount(strSQL);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE EDITORIAL Y JUEGO
     *
     * @param id_editorial
     * @param intRegsPerPag
     * @param intPage
     * @param hmFilter
     * @param hmOrder
     * @param expand
     * @return arrEditorialJuegoBean
     * @throws Exception
     */
    public ArrayList<JuegoBean> getPageEditorial(int id_editorial, int intRegsPerPag, int intPage,
            ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += " AND id_editorial=" + id_editorial + " ";
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
        ArrayList<JuegoBean> arrEditorialJuegoBean = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    JuegoBean oJuegoBean = new JuegoBean();
                    arrEditorialJuegoBean.add(oJuegoBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrEditorialJuegoBean;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE EDITORIAL Y JUEGO
     *
     * @param id_editorial
     * @param intRegsPerPag
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getPagesEditorial(int id_editorial, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND id_editorial=" + id_editorial;
        int pages = 0;
        try {
            pages = oMysql.getPages(strSQL, intRegsPerPag);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE EDITORIAL Y JUEGO
     *
     * @param id_editorial
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getCountEditorial(int id_editorial, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "AND id_editorial=" + id_editorial;
        int pages = 0;
        try {
            pages = oMysql.getCount(strSQL);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * Método SET Juego
     *
     * @param oJuegoBean
     * @return iResult
     * @throws Exception
     */
    public Integer set(JuegoBean oJuegoBean) throws Exception {
        Integer iResult = null;
        try {
            if (oJuegoBean.getId() == 0) {
                strSQL = "INSERT INTO " + strTable + " ";
                strSQL += "(" + oJuegoBean.getColumns() + ")";
                strSQL += "VALUES(" + oJuegoBean.getValues() + ")";
                iResult = oMysql.executeInsertSQL(strSQL);
            } else {
                strSQL = "UPDATE " + strTable + " ";
                strSQL += " SET " + oJuegoBean.toPairs();
                strSQL += " WHERE id=" + oJuegoBean.getId();
                iResult = oMysql.executeUpdateSQL(strSQL);
            }

        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":set ERROR: " + ex.getMessage()));
        }
        return iResult;
    }

    /**
     * Método REMOVE Juego
     *
     * @param id
     * @return result
     * @throws Exception
     */
    @Override
    public Integer remove(Integer id) throws Exception {
        int result = 0;
        try {
            result = oMysql.removeOne(id, strTable);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":remove ERROR: " + ex.getMessage()));
        }
        return result;
    }

    // MÉTODOS NO IMPLEMENTADOS 
    /**
     *
     * @param alFilter
     * @param hmOrder
     * @param expand
     * @return
     * @throws Exception
     */
    @Override
    public ArrayList<JuegoBean> getAll(ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

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
import net.daw.bean.implementation.CategoriaBean;
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
public class CategoriaDao implements ViewDaoInterface<CategoriaBean>, TableDaoInterface<CategoriaBean> {

    private String strTable = "categoria";
    private String strSQL = "select * from categoria where 1=1 ";
    private MysqlDataSpImpl oMysql = null;
    private Connection oConnection = null;

    /**
     *
     * @param oPooledConnection
     * @throws Exception
     */
    public CategoriaDao(Connection oPooledConnection) throws Exception {
        try {
            oConnection = oPooledConnection;
            oMysql = new MysqlDataSpImpl(oConnection);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":constructor ERROR: " + ex.getMessage()));
        }
    }

    /**
     * Método GET Categoría
     *
     * @param oCategoriaBean
     * @param expand
     * @return oCategoriaBean
     * @throws Exception
     */
    @Override
    public CategoriaBean get(CategoriaBean oCategoriaBean, Integer expand) throws Exception {
        if (oCategoriaBean.getId() > 0) {
            try {
                ResultSet oResultSet = oMysql.getAllSql(strSQL + " And id= " + oCategoriaBean.getId() + " ");
                if (oResultSet != null) {
                    while (oResultSet.next()) {
                        oCategoriaBean = oCategoriaBean.fill(oResultSet, oConnection, expand);
                    }
                }
            } catch (Exception ex) {
                ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
            }
        } else {
            oCategoriaBean.setId(0);
        }
        return oCategoriaBean;
    }

    /**
     * Métodos para listados de Categorías
     *
     * @param intRegsPerPag
     * @param intPage
     * @param hmFilter
     * @param hmOrder
     * @param expand
     * @return arrCategoria
     * @throws Exception
     */
    @Override
    public ArrayList<CategoriaBean> getPage(int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
        ArrayList<CategoriaBean> arrCategoria = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    CategoriaBean oCategoriaBean = new CategoriaBean();
                    arrCategoria.add(oCategoriaBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrCategoria;
    }

    /**
     * Métodos para listados de Categorías
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
     * Métodos para listados de Categorías
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

//    @Override
//    public ArrayList<CategoriaBean> getAll(ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
//        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
//        ArrayList<CategoriaBean> arrCategoria = new ArrayList<>();
//        try {
//            ResultSet oResultSet = oMysql.getAllSql(strSQL);
//            if (oResultSet != null) {
//                while (oResultSet.next()) {
//                    CategoriaBean oCategoriaBean = new CategoriaBean();
//                    arrCategoria.add(oCategoriaBean.fill(oResultSet, oConnection, expand));
//                }
//            }
//        } catch (Exception ex) {
//            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
//        }
//        return arrCategoria;
//    }
    /**
     * Método SET Categoría
     *
     * @param oCategoriaBean
     * @return iResult
     * @throws Exception
     */
    @Override
    public Integer set(CategoriaBean oCategoriaBean) throws Exception {
        Integer iResult = null;
        try {
            if (oCategoriaBean.getId() == 0) {
                strSQL = "INSERT INTO " + strTable + " ";
                strSQL += "(" + oCategoriaBean.getColumns() + ")";
                strSQL += "VALUES(" + oCategoriaBean.getValues() + ")";
                iResult = oMysql.executeInsertSQL(strSQL);
            } else {
                strSQL = "UPDATE " + strTable + " ";
                strSQL += " SET " + oCategoriaBean.toPairs();
                strSQL += " WHERE id=" + oCategoriaBean.getId();
                iResult = oMysql.executeUpdateSQL(strSQL);
            }

        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":set ERROR: " + ex.getMessage()));
        }
        return iResult;
    }

    /**
     * Método REMOVE Categoría
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

    /**
     * MÉTODOS PARA ASIGNACIÓN DE CATEGORÍAS
     *
     * @param id_juego
     * @param intRegsPerPag
     * @param intPage
     * @param hmFilter
     * @param hmOrder
     * @param expand
     * @return arrCategoriaBean
     * @throws Exception
     */
    public ArrayList<CategoriaBean> getPageCategoria(int id_juego, int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        strSQL += "and categoria.id not in (select cj.id_categoria from  categoriajuego cj where cj.id_juego=" + id_juego + ")";
        strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
        ArrayList<CategoriaBean> arrCategoriaBean = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    CategoriaBean oCategoriaBean = new CategoriaBean();
                    arrCategoriaBean.add(oCategoriaBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrCategoriaBean;
    }

    /**
     * MÉTODOS PARA ASIGNACIÓN DE CATEGORÍAS
     *
     * @param id_juego
     * @param intRegsPerPag
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getPagesCategoria(int id_juego, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "and categoria.id not in (select cj.id_categoria from  categoriajuego cj where cj.id_juego=" + id_juego + ")";
        int pages = 0;
        try {
            pages = oMysql.getPages(strSQL, intRegsPerPag);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * MÉTODOS PARA ASIGNACIÓN DE CATEGORÍAS
     *
     * @param id_juego
     * @param hmFilter
     * @return pages
     * @throws Exception
     */
    public int getCountCategoria(int id_juego, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
        strSQL += SqlBuilder.buildSqlWhere(hmFilter);
        strSQL += "and categoria.id not in (select cj.id_categoria from  categoriajuego cj where cj.id_juego=" + id_juego + ")";
        int pages = 0;
        try {
            pages = oMysql.getCount(strSQL);
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
        }
        return pages;
    }

    /**
     * Método para crear el array de Categoría en TotalJuegoBean
     *
     * @param id_juego
     * @param alFilter
     * @param hmOrder
     * @param expand
     * @return arrCategoria
     * @throws Exception
     */
    public ArrayList<CategoriaBean> getAllJuegoCategoria(Integer id_juego, ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        strSQL = "select * from categoria c, categoriajuego cj where c.id=cj.id_categoria and cj.id_juego=" + id_juego;
        strSQL += SqlBuilder.buildSqlOrder(hmOrder);
        ArrayList<CategoriaBean> arrCategoria = new ArrayList<>();
        try {
            ResultSet oResultSet = oMysql.getAllSql(strSQL);
            if (oResultSet != null) {
                while (oResultSet.next()) {
                    CategoriaBean oCategoriaBean = new CategoriaBean();
                    arrCategoria.add(oCategoriaBean.fill(oResultSet, oConnection, expand));
                }
            }
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
        }
        return arrCategoria;
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
    public ArrayList<CategoriaBean> getAll(ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

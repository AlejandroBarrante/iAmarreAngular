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
import net.daw.bean.implementation.AutorJuegoBean;
import net.daw.dao.publicinterface.TableDaoInterface;
import net.daw.dao.publicinterface.ViewDaoInterface;
import net.daw.data.implementation.MysqlDataSpImpl;
import net.daw.helper.statics.ExceptionBooster;
import net.daw.helper.statics.FilterBeanHelper;
import net.daw.helper.statics.SqlBuilder;

public class AutorJuegoDao implements ViewDaoInterface<AutorJuegoBean>, TableDaoInterface<AutorJuegoBean> {

	private String strSQL = "SELECT aj.id_juego, aj.id_autor, a.nombre as nombreautor, a.fechaNac, a.website, j.titulo as titulojuego, j.fechaPublicacion, j.jugMin, j.jugMax, j.edad, j.duracion FROM autorjuego aj, juego j, autor a WHERE j.id = aj.id_juego AND a.id = aj.id_autor AND 1=1  ";
	private MysqlDataSpImpl oMysql = null;
	private Connection oConnection = null;
	private String strTable = "autorJuego";

	public AutorJuegoDao(Connection oPooledConnection) throws Exception {
		try {
			oConnection = oPooledConnection;
			oMysql = new MysqlDataSpImpl(oConnection);
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":constructor ERROR: " + ex.getMessage()));
		}
	}

	// OPERACIONES BÁSICAS
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

	@Override
	public ArrayList<AutorJuegoBean> getPage(int intRegsPerPag, int intPage, ArrayList<FilterBeanHelper> hmFilter,
			HashMap<String, String> hmOrder, Integer expand) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += SqlBuilder.buildSqlOrder(hmOrder);
		strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
		ArrayList<AutorJuegoBean> arrAutorJuegoBean = new ArrayList<>();
		try {
			ResultSet oResultSet = oMysql.getAllSql(strSQL);
			if (oResultSet != null) {
				while (oResultSet.next()) {
					AutorJuegoBean oAutorJuegoBean = new AutorJuegoBean();
					arrAutorJuegoBean.add(oAutorJuegoBean.fill(oResultSet, oConnection, expand));
				}
			}
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
		}
		return arrAutorJuegoBean;
	}

	@Override
	public ArrayList<AutorJuegoBean> getAll(ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder,
			Integer expand) throws Exception {
		strSQL += SqlBuilder.buildSqlOrder(hmOrder);
		ArrayList<AutorJuegoBean> arrAutorJuego = new ArrayList<>();
		try {
			ResultSet oResultSet = oMysql.getAllSql(strSQL);
			if (oResultSet != null) {
				while (oResultSet.next()) {
					AutorJuegoBean oAutorJuegoBean = new AutorJuegoBean();
					arrAutorJuego.add(oAutorJuegoBean.fill(oResultSet, oConnection, expand));
				}
			}
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
		}
		return arrAutorJuego;
	}

	// -----------------
	// MÉTODO PARA SACAR AL AUTOR EN LA PANTALLA DE JUEGO VIEW
	public AutorJuegoBean getAutorFiltradoPorJuego(AutorJuegoBean oAutorJuegoBean, Integer expand) throws Exception {
		ResultSet oResultSet = null;
		try {

			oResultSet = oMysql.getAllSql(strSQL + " AND aj.id_juego= " + oAutorJuegoBean.getId_juego());

			if (oResultSet != null) {
				while (oResultSet.next()) {
					oAutorJuegoBean = oAutorJuegoBean.fill(oResultSet, oConnection, expand);
				}
			}

		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
		}

		return oAutorJuegoBean;
	}

	// MÉTODOS PARA HACER CONSULTAS CRUZADAS ENTRE AUTOR Y JUEGO
	public int getPagesAutor(int id_autor, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += "AND aj.id_autor=" + id_autor;
		int pages = 0;
		try {
			pages = oMysql.getPages(strSQL, intRegsPerPag);
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
		}
		return pages;
	}

	public int getCountAutor(int id_autor, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += "AND aj.id_autor=" + id_autor;
		int pages = 0;
		try {
			pages = oMysql.getCount(strSQL);
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
		}
		return pages;
	}

	public ArrayList<AutorJuegoBean> getPageAutor(int id_autor, int intRegsPerPag, int intPage,
			ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += SqlBuilder.buildSqlOrder(hmOrder);
		strSQL += "AND aj.id_autor=" + id_autor;
		strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
		ArrayList<AutorJuegoBean> arrAutorJuegoBean = new ArrayList<>();
		try {
			ResultSet oResultSet = oMysql.getAllSql(strSQL);
			if (oResultSet != null) {
				while (oResultSet.next()) {
					AutorJuegoBean oAutorJuegoBean = new AutorJuegoBean();
					arrAutorJuegoBean.add(oAutorJuegoBean.fill(oResultSet, oConnection, expand));
				}
			}
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
		}
		return arrAutorJuegoBean;
	}

	public int getPagesJuego(int id_juego, int intRegsPerPag, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += "AND aj.id_juego=" + id_juego;
		int pages = 0;
		try {
			pages = oMysql.getPages(strSQL, intRegsPerPag);
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPages ERROR: " + ex.getMessage()));
		}
		return pages;
	}

	public int getCountJuego(int id_juego, ArrayList<FilterBeanHelper> hmFilter) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += "AND aj.id_juego=" + id_juego;
		int pages = 0;
		try {
			pages = oMysql.getCount(strSQL);
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getCount ERROR: " + ex.getMessage()));
		}
		return pages;
	}

	public ArrayList<AutorJuegoBean> getPageJuego(int id_juego, int intRegsPerPag, int intPage,
			ArrayList<FilterBeanHelper> hmFilter, HashMap<String, String> hmOrder, Integer expand) throws Exception {
		strSQL += SqlBuilder.buildSqlWhere(hmFilter);
		strSQL += SqlBuilder.buildSqlOrder(hmOrder);
		strSQL += "AND aj.id_juego=" + id_juego;
		strSQL += SqlBuilder.buildSqlLimit(oMysql.getCount(strSQL), intRegsPerPag, intPage);
		ArrayList<AutorJuegoBean> arrAutorJuegoBean = new ArrayList<>();
		try {
			ResultSet oResultSet = oMysql.getAllSql(strSQL);
			if (oResultSet != null) {
				while (oResultSet.next()) {
					AutorJuegoBean oAutorJuegoBean = new AutorJuegoBean();
					arrAutorJuegoBean.add(oAutorJuegoBean.fill(oResultSet, oConnection, expand));
				}
			}
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":getPage ERROR: " + ex.getMessage()));
		}
		return arrAutorJuegoBean;
	}

	// MÉTODO SET
	@Override
	public Integer set(AutorJuegoBean oBean) throws Exception {

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
	@Override
	public Integer remove(Integer id) throws Exception {
		throw new UnsupportedOperationException("Not supported yet."); // To
																		// change
																		// body
																		// of
																		// generated
																		// methods,
																		// choose
																		// Tools
																		// |
																		// Templates.
	}

	@Override
	public AutorJuegoBean get(AutorJuegoBean oBean, Integer expand) throws Exception {
		throw new UnsupportedOperationException("Not supported yet."); // To
																		// change
																		// body
																		// of
																		// generated
																		// methods,
																		// choose
																		// Tools
																		// |
																		// Templates.
	}

}

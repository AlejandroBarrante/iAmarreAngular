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
import net.daw.bean.implementation.TotalJuegoBean;
import net.daw.dao.publicinterface.TableDaoInterface;
import net.daw.dao.publicinterface.ViewDaoInterface;
import net.daw.data.implementation.MysqlDataSpImpl;
import net.daw.helper.statics.ExceptionBooster;
import net.daw.helper.statics.FilterBeanHelper;
import net.daw.helper.statics.SqlBuilder;

public class TotalJuegoDao implements ViewDaoInterface<JuegoBean>, TableDaoInterface<JuegoBean> {

	private String strSQL = "select * from juego WHERE 1=1  ";
	private MysqlDataSpImpl oMysql = null;
	private Connection oConnection = null;

	public TotalJuegoDao(Connection oPooledConnection) throws Exception {
		try {
			oConnection = oPooledConnection;
			oMysql = new MysqlDataSpImpl(oConnection);
		} catch (Exception ex) {
			ExceptionBooster.boost(new Exception(this.getClass().getName() + ":constructor ERROR: " + ex.getMessage()));
		}
	}

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

	@Override
	public ArrayList<JuegoBean> getAll(ArrayList<FilterBeanHelper> alFilter, HashMap<String, String> hmOrder,
			Integer expand) throws Exception {
		strSQL += SqlBuilder.buildSqlOrder(hmOrder);
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

	public TotalJuegoBean get(TotalJuegoBean oTJuegoBean, JuegoBean oJuegoBean, Integer expand) throws Exception {
		if (oJuegoBean.getId() > 0) {
			try {

				ResultSet oResultSet = oMysql.getAllSql(strSQL + " And id= " + oJuegoBean.getId() + " ");
				if (oResultSet != null) {
					while (oResultSet.next()) {
						oTJuegoBean = oTJuegoBean.fillTotal(oResultSet, oConnection, expand);
					}
				}
			} catch (Exception ex) {
				ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
			}
		} else {
			oTJuegoBean.setId(0);
		}
		return oTJuegoBean;
	}

	@Override
	public JuegoBean get(JuegoBean oBean, Integer expand) throws Exception {
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
	public Integer set(JuegoBean oBean) throws Exception {
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

}

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
import net.daw.dao.implementation.CategoriaDao;
import net.daw.dao.implementation.JuegoDao;

public class CategoriaJuegoBean implements GenericBean {

	@Expose(serialize = false)
	private Integer id_categoria = 0;
	@Expose(deserialize = false)
	private CategoriaBean obj_categoria = null;
	@Expose(serialize = false)
	private Integer id_juego = 0;
	@Expose(deserialize = false)
	private JuegoBean obj_juego = null;

	public Integer getId_categoria() {
		return id_categoria;
	}

	public void setId_categoria(Integer id_categoria) {
		this.id_categoria = id_categoria;
	}

	public CategoriaBean getObj_categoria() {
		return obj_categoria;
	}

	public void setObj_categoria(CategoriaBean obj_categoria) {
		this.obj_categoria = obj_categoria;
	}

	public Integer getId_juego() {
		return id_juego;
	}

	public void setId_juego(Integer id_juego) {
		this.id_juego = id_juego;
	}

	public JuegoBean getObj_juego() {
		return obj_juego;
	}

	public void setObj_juego(JuegoBean obj_juego) {
		this.obj_juego = obj_juego;
	}

	// ---------------------------------------------
	public String toJson(Boolean expand) {
		String strJson = "{";
		strJson += "id_categoria:" + id_categoria + ",";
		strJson += "id_juego:" + id_juego + ",";
		strJson += "}";
		return strJson;
	}

	@Override
	public String getColumns() {
		String strColumns = "";
		strColumns += "id_categoria,";
		strColumns += "id_juego";

		return strColumns;
	}

	@Override
	public String getValues() {
		String strColumns = "";
		strColumns += id_categoria.toString() + ",";
		strColumns += id_juego.toString();

		return strColumns;
	}

	@Override
	public String toPairs() {
		String strPairs = "";
		strPairs += "id=" + id_categoria + ",";
		strPairs += "id=" + id_juego;

		return strPairs;
	}

	@Override
	public CategoriaJuegoBean fill(ResultSet oResultSet, Connection pooledConnection, Integer expand)
			throws SQLException, Exception {

		if (expand > 0) {
			CategoriaBean oCategoriaBean = new CategoriaBean();
			CategoriaDao oCategoriaDao = new CategoriaDao(pooledConnection);
			oCategoriaBean.setId(oResultSet.getInt("id_categoria"));
			oCategoriaBean = oCategoriaDao.get(oCategoriaBean, expand - 1);
			this.setObj_categoria(oCategoriaBean);
		} else {
			this.setId_categoria(oResultSet.getInt("id_categoria"));
		}
		if (expand > 0) {
			JuegoBean oJuegoBean = new JuegoBean();
			JuegoDao oJuegoDao = new JuegoDao(pooledConnection);
			oJuegoBean.setId(oResultSet.getInt("id_juego"));
			oJuegoBean = oJuegoDao.get(oJuegoBean, expand - 1);
			this.setObj_juego(oJuegoBean);
		} else {
			this.setId_juego(oResultSet.getInt("id_juego"));
		}

		return this;

	}

}

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
package net.daw.service.implementation;

import static net.daw.helper.statics.AppConfigurationHelper.getSourceConnection;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import net.daw.bean.implementation.JuegoBean;
import net.daw.bean.implementation.TotalJuegoBean;
import net.daw.bean.implementation.UsuarioBean;
import net.daw.connection.publicinterface.ConnectionInterface;
import net.daw.dao.implementation.TotalJuegoDao;
import net.daw.helper.statics.AppConfigurationHelper;
import net.daw.helper.statics.ExceptionBooster;
import net.daw.helper.statics.JsonMessage;
import net.daw.helper.statics.ParameterCook;
import net.daw.service.publicinterface.TableServiceInterface;
import net.daw.service.publicinterface.ViewServiceInterface;

/**
 *
 * @author Alejandro Barrante Cano
 */
public class TotalJuegoService implements TableServiceInterface, ViewServiceInterface {

    /**
     *
     */
    protected HttpServletRequest oRequest = null;

    /**
     *
     * @param request
     */
    public TotalJuegoService(HttpServletRequest request) {
        oRequest = request;
    }

    /**
     * MÉTODO PARA CHEQUEAR QUE EL USUARIO ESTÉ LOGUEADO
     *
     * @return
     * @throws Exception
     */
    private Boolean checkpermission(String strMethodName) throws Exception {
        UsuarioBean oUserBean = (UsuarioBean) oRequest.getSession().getAttribute("userBean");
        if (oUserBean != null) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Método GET TotalJuego
     *
     * @return data
     * @throws Exception
     */
    @Override
    public String get() throws Exception {

        int id = ParameterCook.prepareId(oRequest);

        String data = null;
        Connection oConnection = null;
        ConnectionInterface oDataConnectionSource = null;
        try {
            oDataConnectionSource = getSourceConnection();
            oConnection = oDataConnectionSource.newConnection();
            TotalJuegoDao oJuegoDao = new TotalJuegoDao(oConnection);
            TotalJuegoBean oTJuegoBean = new TotalJuegoBean();
            JuegoBean oJuegoBean = new JuegoBean(id);

            oTJuegoBean = oJuegoDao.get(oTJuegoBean, oJuegoBean, AppConfigurationHelper.getJsonDepth());

            data = JsonMessage.getJson("200", AppConfigurationHelper.getGson().toJson(oTJuegoBean));
        } catch (Exception ex) {
            ExceptionBooster.boost(new Exception(this.getClass().getName() + ":get ERROR: " + ex.getMessage()));
        } finally {
            if (oConnection != null) {
                oConnection.close();
            }
            if (oDataConnectionSource != null) {
                oDataConnectionSource.disposeConnection();
            }
        }
        return data;

    }

    /**
     * Método REMOVE TotalJuego
     *
     * @return resultado
     * @throws Exception
     */
    @Override
    public String remove() throws Exception {
        if (this.checkpermission("remove")) {
            int id = ParameterCook.prepareId(oRequest);
            String resultado = null;
            Connection oConnection = null;
            ConnectionInterface oDataConnectionSource = null;
            try {
                oDataConnectionSource = getSourceConnection();
                oConnection = oDataConnectionSource.newConnection();
                oConnection.setAutoCommit(false);
                TotalJuegoDao oTotalJuegoDao = new TotalJuegoDao(oConnection);
                resultado = JsonMessage.getJson("200", oTotalJuegoDao.remove(id).toString());
                oConnection.commit();
            } catch (Exception ex) {
                oConnection.rollback();
                ExceptionBooster.boost(new Exception(this.getClass().getName() + ":remove ERROR: " + ex.getMessage()));
            } finally {
                if (oConnection != null) {
                    oConnection.close();
                }
                if (oDataConnectionSource != null) {
                    oDataConnectionSource.disposeConnection();
                }
            }
            return resultado;
        } else {
            return JsonMessage.getJsonMsg("401", "Unauthorized");
        }
    }

    // -------------
    // MÉTODOS NO IMPLEMENTADOS
    /**
     *
     * @return @throws Exception
     */
    @Override
    public String set() throws Exception {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String getall() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String getpage() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String getpages() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String getcount() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String getaggregateviewsome() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}

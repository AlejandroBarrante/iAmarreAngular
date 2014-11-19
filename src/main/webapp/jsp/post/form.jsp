<%-- 
 Copyright (C) July 2014 Rafael Aznar

 This program is free software; you can redistribute it and/or
 modify it under the terms of the GNU General Public License
 as published by the Free Software Foundation; either version 2
 of the License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
 Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
--%>

<form class="form-horizontal" role="form" action="#" id="postForm" name="formulario">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="id">Id:</label>
        <div class="col-sm-2">
            <input type="text" id="id" class="form-control"  name="id" placeholder="id" />
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="titulo">Titulo del post:</label>
        <div class="col-sm-6">
            <input type="text" id="titulo" class="form-control"  name="titulo" size="15" placeholder="T�tulo del post" />
        </div>
    </div>    
    
    <div class="form-group">
        <label class="col-sm-2 control-label" for="mensaje">Mensaje:</label>
        <div class="col-sm-9">
            <textarea type="text"  class="form-control pull-left"  id="mensaje" name="mensaje" size="15" placeholder="Mensaje"></textarea>
        </div>
        <div class="col-sm-1">
            <a class="btn btn-primary btn-sm" id="contenido_button" href="#"><i class="glyphicon glyphicon-pencil"></i></a>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-sm-2 control-label" for="fechacreacion">Fecha de creaci�n</label> 
        <div class="col-sm-3">           
            <div class='input-group date' id='fechacreacion_group'>
                <input type='text' class="form-control" id='fechacreacion' name="fechacreacion" placeholder="Fecha de creaci�n" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-sm-2 control-label" for="fechamodificacion">Fecha de modificaci�n</label> 
        <div class="col-sm-3">           
            <div class='input-group date' id='fechamodificacion_group'>
                <input type='text' class="form-control" id='fechamodificacion' name="fechamodificacion" placeholder="Fecha de modificaci�n" />
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                </span>
            </div>
        </div>
    </div>
    
    <div class="form-group">
        <label class="col-sm-2 control-label"  for="primermensaje">Primer mensaje:</label>
        <div class="col-sm-1">
            <input type="checkbox" id="primermensaje" name="primermensaje" value="" />
        </div>
    </div> 

    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_tema_id">Tema: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_tema_id" class="input-mini" name="id_tema" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_tema_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_tema_desc" id="obj_tema_desc"></label>                     
    </div>
    
    <div class="form-group">
        <label class="col-sm-2 control-label" for="obj_usuario_id">Usuario: </label> 
        <div class="col-sm-2">              
            <input readonly="true"  class="form-control"  id="obj_usuario_id" class="input-mini" name="id_usuario" type="text" size="5" maxlength="5" />  
        </div>
        <div class="col-sm-1">              
            <a class="btn btn-primary btn-sm" id="obj_usuario_button" href="#"><i class="glyphicon glyphicon-search"></i></a>
        </div>        
        <label class="col-sm-7" for="obj_usuario_desc" id="obj_usuario_desc"></label>                     
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <div id="messages"></div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button class="btn btn-primary" id="submitForm">Guardar</button>
        </div>
    </div>

</form>
        

<script type="text/javascript">

    $(document).ready(function() {
        $('#fechacreacion_group').datetimepicker({
            pickTime: false,
            language: 'es',
            showToday: true
        });
        $('#fechamodificacion_group').datetimepicker({
            pickTime: false,
            language: 'es',
            showToday: true
        });
        //http://jqueryvalidation.org/documentation/
        $('#postForm')
                .bootstrapValidator({
                    container: '#messages',
                    feedbackIcons: {
                        valid: 'glyphicon glyphicon-ok',
                        invalid: 'glyphicon glyphicon-remove',
                        validating: 'glyphicon glyphicon-refresh'
                    },
                    fields: {
                        titulo: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir un t�tulo al post'
                                },
                                stringLength: {
                                    max: 255,
                                    message: 'El t�tulo del post debe tener como m�ximo 255 caracteres'
                                }
                            }
                        },
                        mensaje: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir contenido'
                                }
                            }
                        },
                        fechacreacion: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir una fecha de creaci�n'
                                },
                                date: {
                                    format: 'DD/MM/YYYY',
                                    message: 'La fecha de creaci�n no tiene formato DD/MM/YYYY'
                                }
                            }
                        },
                        fechamodificacion: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe introducir una fecha de modificaci�n'
                                },
                                date: {
                                    format: 'DD/MM/YYYY',
                                    message: 'La fecha de modificaci��n no tiene formato DD/MM/YYYY'
                                }
                            }
                        },
                        id_usuario: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir un usuario'
                                },
                                integer: {
                                    message: 'El identificador de usuario debe ser un entero'
                                }
                            }
                        },
                        id_tema: {
                            validators: {
                                notEmpty: {
                                    message: 'Debe elegir un tema'
                                },
                                integer: {
                                    message: 'El identificador del tema debe ser un entero'
                                }
                            }
                        }
                    }
                })
                .on('change', '[name="id_usuario"]', function() {
                    $('#postForm').bootstrapValidator('revalidateField', 'id_usuario');
                })

                .on('change', '[name="id_tema"]', function() {
                    $('#postForm').bootstrapValidator('revalidateField', 'id_tema');
                })
                ;
        $('#fechacreacion_group').on('dp.change dp.show', function(e) {
// Revalidate the date when user change it
            $('#postForm').bootstrapValidator('revalidateField', 'fechacreacion_group');
        });
        $('#fechamodificacion_group').on('dp.change dp.show', function(e) {
// Revalidate the date when user change it
            $('#postForm').bootstrapValidator('revalidateField', 'modificacion_group');
        });
    });       

    
    
</script>
     
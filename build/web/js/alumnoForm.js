/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#AlumnoForm").validate({
        rules: {
            txtNombres: {
                required: true,
                maxlength: 120,
                minlength: 3,
                pattern: '[a-zA-Z ]*'
            },
            txtApellidos: {
                required: true,
                maxlength: 120,
                minlength: 3,
                pattern: '[a-zA-Z ]*'
            },
            intGenero: {
                required: true,
                minlength: 1

            },
            txtDocumento: {
                required: true,
                digits: true
            },
            txtFechanacimiento: {
                required: true,
                minlength: 1

            }

        },
        messages: {
            txtNombres: {
                required: "El campo debe ser diligenciado",
                maxlength: "Excede el maximo de 120 caracteres",
                minlength: "Debe tener mas de 3 caracteres",
                pattern: "Nombres sin numeros o caracteres especiales"
            },
            txtApellidos: {
                required: "El campo debe ser diligenciado",
                pattern: "Apellidos sin numeros o caracteres especiales"
            }
        },

    });

    var urlGenero = "GeneroServlet?accion=listar";

    $.ajax({url: urlGenero, success: function (result) {
            // var objgenero = jQuery.parseJSON(result);
            $.each(result.generos, function (i, item) {
                $('#intGenero').append($('<option>', {
                    value: item.id,
                    text: item.nombre
                }));
            });

        }});

});


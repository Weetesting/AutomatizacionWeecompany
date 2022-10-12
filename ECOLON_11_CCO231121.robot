***Settings***

#Leonardo G.Mendoza

#QP

#Documentacion       Odontologia Contact Center




Library                 SeleniumLibrary
Library                 Dialogs

**Variables**

${Navegador}                           chrome

#Credenciales Weeclaims
${URL_Claims}                          https://weeqp.azurewebsites.net/QP/WeeClaims/
${User_Claims}                         jgonzalez@weecompany.net
${Password_Claims}                     $isis.demo

#Datos Afiliado
${Nombre_Llamada}                      Leo Test Qa
${Telefono_Afiliado}                   5554957459
${Motivo}                              PRUEBA
${Email Afiliado}                      lmendoza@weecompany.net

**Keywords**

Ingreso WeeClaims
   #Abrir Navegador
   Open Browser                         ${URL_Claims}      ${Navegador}
   Set Selenium Speed                 .3
   Maximize Browser Window
   #Ingresar Usuario y Contraseña
   Wait Until Element Is Visible       xpath=//*[@id="frmMasterLogin_UserName"]                                          timeout=40 s
   Click ELement                       xpath=//*[@id="frmMasterLogin_UserName"]
   Input Text                          xpath=//*[@id="frmMasterLogin_UserName"]                                          ${User_Claims}
   Wait Until Element Is Visible       xpath=//*[@id="frmMasterLogin_Password"]                                          timeout=40 s
   Click ELement                       xpath=//*[@id="frmMasterLogin_Password"]
   Input Text                          xpath=//*[@id="frmMasterLogin_Password"]                                          ${Password_Claims}
   #Acceder
   Wait Until Element Is Visible       xpath=//*[@id="frmMasterSession_OK"]                                              timeout=40 s
   Click Element                       xpath=//*[@id="frmMasterSession_OK"]

Modulo Contact Center
   Set Selenium Speed                .3
   #Seleccionar Modulo C.C
   Wait Until Element Is visible       xpath=//*[@id="c8"]/span                                                          timeout=40 s
   Click Element                       xpath=//*[@id="c8"]/span
   Sleep                  10 s
   #Conectado/SI
   Wait Until Element Is Visible       xpath=//*[@id="contenedor"]/div/div[1]/div[1]/div/div/div/span[2]                 timeout=40 s
   Click Element                       xpath=//*[@id="contenedor"]/div/div[1]/div[1]/div/div/div/span[2]
   #Pestaña Usuario de Servicio
   Wait Until Element Is Visible       xpath=//*[@id="WeeClaims_ContacCenter_tabUsuariosServicio"]/a                     timeout=40 s
   Click Element                       xpath=//*[@id="WeeClaims_ContacCenter_tabUsuariosServicio"]/a
   #Desplegable Llamadas
   Wait Until Element Is Visible       xpath=//*[@id="CallCenter_Usuarios_AddNewCalluser"]/button                        timeout=40 s
   Click Element                       xpath=//*[@id="CallCenter_Usuarios_AddNewCalluser"]/button
   #Desplegable Llamadas/Entrante
   Wait Until Element Is Visible       xpath=//*[@id="WeeClaims_CCLlamadaServicio_Entrante"]/a                           timeout=40 s
   Click Element                       xpath=//*[@id="WeeClaims_CCLlamadaServicio_Entrante"]/a
   #Datos Afiliado/Llamada Con
   Wait Until Element Is Visible       xpath=//*[@id="CallCneter_txtLlamadaCon"]                                         timeout=40 s
   Click Element                       xpath=//*[@id="CallCneter_txtLlamadaCon"]
   Input Text                          xpath=//*[@id="CallCneter_txtLlamadaCon"]                                         ${Nombre_Llamada}
   #Boton Buscar
   Wait Until Element Is Visible       xpath=//*[@id="WC_CallCenter_DivDatosLlamada"]/div[1]/div/div[3]/i                timeout=40 s
   Click Element                       xpath=//*[@id="WC_CallCenter_DivDatosLlamada"]/div[1]/div/div[3]/i
   Sleep                               7 s
   #Seleccionar #Poliza
   Wait Until Element Is Visible       xpath=//*[@id="CallCenter_ListaPersonas"]/table/tbody/tr/td[2]
   Element Should Be Visible           xpath=//*[@id="CallCenter_ListaPersonas"]/table/tbody/tr/td[2]                     ${Nombre_Llamada}
   Click Element                       xpath=//*[@id="CallCenter_ListaPersonas"]/table/tbody/tr/td[2]
   #Telefono Afiliado
   Wait Until Element Is Visible       xpath=//*[@id="CallCneter_txtTelefono"]                                           timeout=40 s
   Click Element                       xpath=//*[@id="CallCneter_txtTelefono"]
   Input Text                          xpath=//*[@id="CallCneter_txtTelefono"]                                           ${Telefono_Afiliado}
   #Motivo/Odontologia
   Wait Until Element Is Visible       xpath=//*[@id="CallCneter_txtMotivo"]                                             timeout=40 s
   Click Element                       xpath=//*[@id="CallCneter_txtMotivo"]
   Click Element                       xpath=//*[@id="CallCneter_txtMotivo"]/option[7]
   #Boton Continuar
   Wait Until Element Is Visible       xpath=//*[@id="btnSave"]                                                          timeout=40 s
   Click Element                       xpath=//*[@id="btnSave"]
   #Aviso Confirmar
   Wait Until Element Is Visible       xpath=//*[@id="body"]/div[20]/div[2]/div/div/div/div/div[4]/button[1]             timeout=40 s
   Click Element                       xpath=//*[@id="body"]/div[20]/div[2]/div/div/div/div/div[4]/button[1]
   #Pestaña Redes Medicas
   Wait Until Element Is Visible       xpath=//*[@id="tabsInfoProveedor"]/li[3]/a                                        timeout=40 s
   Click Element                       xpath=//*[@id="tabsInfoProveedor"]/li[3]/a
   #Filtro Tipo Proveedor
   Wait Until Element Is Visible       xpath=//*[@id="Icono1"]                                                           timeout=40 s
   Click Element                       xpath=//*[@id="Icono1"]
   #Desplegable Tipo Proveedor
   Wait Until Element Is Visible       xpath=//*[@id="dllCallCenter_TipoProveedor"]                                      timeout=40 s
   Click Element                       xpath=//*[@id="dllCallCenter_TipoProveedor"]
   Sleep                               3 s
   Wait Until Element Is Visible       xpath=//*[@id="dllCallCenter_TipoProveedor"]/option[6]
   Click Element                       xpath=//*[@id="dllCallCenter_TipoProveedor"]/option[6]
   #Boton Buscar
   Wait Until Element Is Visible       xpath=//*[@id="dllCallCenter_btnBuscar"]                                           timeout=40 s
   Click Element                       xpath=//*[@id="dllCallCenter_btnBuscar"]
   #Solicitar Proveedor
   Wait Until Element Is Visible       xpath=//*[@id="CallCenter_ListaProveedoresbusqueda"]/table/tbody[5]/tr/td[12]/button     timeout=40 s
   Click Element                       xpath=//*[@id="CallCenter_ListaProveedoresbusqueda"]/table/tbody[5]/tr/td[12]/button
   #Registrar Fallido
   Wait Until Element Is Visible       xpath=//*[@id="btnCallCenterOdontologiaRegistrar"]                   timeout=40 s
   Click Element                       xpath=//*[@id="btnCallCenterOdontologiaRegistrar"]
   #Mail Afiliado
   Wait Until Element Is Visible       xpath=//*[@id="txtCorreoCallOdontologo"]                          timeout=40 s
   Click Element                       xpath=//*[@id="txtCorreoCallOdontologo"]
   Input Text                          xpath=//*[@id="txtCorreoCallOdontologo"]                          ${Email Afiliado}
   ##Tipo de Atencion
   #Wait Until Element Is Visible       xpath=//*[@id="slcTipoAtencionCallNutriologo"]                     timeout=40 s
   #Click Element                       xpath=//*[@id="slcTipoAtencionCallNutriologo"]
   ##Tipo de Atencion/Terapia Individual
   #Wait Until Element Is Visible       xpath=//*[@id="slcTipoAtencionCallNutriologo"]/option[2]            timeout=40 s
   #Click Element                       xpath=//*[@id="slcTipoAtencionCallNutriologo"]/option[2]
   #Motivo Consulta
   Wait Until Element Is Visible       xpath=//*[@id="txtMotivoCallOdontologo"]                                          timeout=40 s
   Click Element                       xpath=//*[@id="txtMotivoCallOdontologo"]
   Input Text                          xpath=//*[@id="txtMotivoCallOdontologo"]                                          ${Motivo}
   #Boton Registrar
   Wait Until Element Is Visible       xpath=//*[@id="btnCallCenterOdontologiaRegistrar"]                                  timeout=40 s
   Click Element                       xpath=//*[@id="btnCallCenterOdontologiaRegistrar"]
   #Folio Servicio
   Execute Manual Step                 Copiar Folio!!!!!!
   Wait Until Element Is Visible       xpath=//*[@id="body"]/div[21]/div[2]/div/div/div/div/div[4]/button             timeout=40 s
   Click Element                       xpath=//*[@id="body"]/div[21]/div[2]/div/div/div/div/div[4]/button
   #Pestaña Servicios
   Wait Until Element Is Visible       xpath=//*[@id="tabsInfoProveedor"]/li[2]/a                                          timeout=40 s
   Click Element                       xpath=//*[@id="tabsInfoProveedor"]/li[2]/a
   #Revision Folio
   Scroll Element Into View            xpath=//*[@id="HistorialllamdasColinfo"]/div
   Sleep                               7 s
   Capture Page Screenshot             SS2.png

Modulo Reportes
   #Modulo Reportes
   Wait Until Element Is Visible       xpath=//*[@id="c11"]/span                    timeout=40 s
   Click Element                       xpath=//*[@id="c11"]/span
   #Call Center
   Wait Until Element Is Visible       xpath=//*[@id="divPageReportes"]/div/div[7]/table/tbody/tr/td[2]/a                  timeout=40 s
   Click Element                       xpath=//*[@id="divPageReportes"]/div/div[7]/table/tbody/tr/td[2]/a
   #Bucar Folio
   Execute Manual Step                 Busqueda por Folio!!!!
   Capture Page Screenshot             SS4.png

Modulo Contact Center 2
   Set Selenium Speed                .3
   #Seleccionar Modulo C.C
   Wait Until Element Is visible       xpath=//*[@id="c8"]/span                                                          timeout=40 s
   Click Element                       xpath=//*[@id="c8"]/span
   Sleep                  8 s
   #Pestaña Usuario de Servicio
   Wait Until Element Is Visible       xpath=//*[@id="WeeClaims_ContacCenter_tabUsuariosServicio"]/a                     timeout=40 s
   Click Element                       xpath=//*[@id="WeeClaims_ContacCenter_tabUsuariosServicio"]/a
   #Desplegable Llamadas
   Wait Until Element Is Visible       xpath=//*[@id="CallCenter_Usuarios_AddNewCalluser"]/button                        timeout=40 s
   Click Element                       xpath=//*[@id="CallCenter_Usuarios_AddNewCalluser"]/button
   #Desplegable Llamadas/Entrante
   Wait Until Element Is Visible       xpath=//*[@id="WeeClaims_CCLlamadaServicio_Entrante"]/a                           timeout=40 s
   Click Element                       xpath=//*[@id="WeeClaims_CCLlamadaServicio_Entrante"]/a
   #Pestaña Servicios
   Wait Until Element Is Visible       xpath=//*[@id="tabsInfoProveedor"]/li[2]/a                                        timeout=40 s
   Click Element                       xpath=//*[@id="tabsInfoProveedor"]/li[2]/a
   #Confirmar folio
   Execute Manual Step                  Confirma Folio!!!
   Sleep                                7 s
   Capture Page Screenshot             SS3.png

Modulo Reportes 2
   #Modulo Reportes
   Wait Until Element Is Visible       xpath=//*[@id="c11"]/span                    timeout=40 s
   Click Element                       xpath=//*[@id="c11"]/span
   #Call Center
   Wait Until Element Is Visible       xpath=//*[@id="divPageReportes"]/div/div[7]/table/tbody/tr/td[2]/a                  timeout=40 s
   Click Element                       xpath=//*[@id="divPageReportes"]/div/div[7]/table/tbody/tr/td[2]/a
   #Bucar Folio
   Execute Manual Step                 Busqueda por Folio!!!!
   Capture Page Screenshot             SS4.png

   Close Browser




***Test Case***
ECOLON_11_CCO231121
   Ingreso WeeClaims
   Modulo Contact Center
   Modulo Reportes
   Modulo Contact Center 2
   Modulo Reportes 2
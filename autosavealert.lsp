;libwtf|150821



(defun C:SAVETIMEALERT ()

   (vl-load-com)

   (setq VTFRXN (vlr-editor-reactor nil '((:VLR-sysVarChanged . VTF))))

)



(defun VTF (CALL CALLBACK)

                (if (= (strcase (car CALLBACK)) (setq str "SAVETIME"))

                               (alert (strcat "value for SAVETIME just changed!"))

                )

)



(c:savetimealert)

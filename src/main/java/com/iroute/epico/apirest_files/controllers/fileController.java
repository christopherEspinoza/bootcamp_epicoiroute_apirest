package com.iroute.epico.apirest_files.controllers;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.CallableStatement;
import java.sql.Connection;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.iroute.epico.apirest_files.Utils.ConnectionDB;
import com.opencsv.CSVReader;

@RestController
@RequestMapping("/file")
public class fileController {

    @PostMapping("/uploadfile")
    public ResponseEntity<?> uploadFile(@RequestParam("file") MultipartFile file) {
        if (file.isEmpty()) {
            return ResponseEntity.badRequest().body("El archivo está vacío");
        }

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(file.getInputStream()));
        CSVReader csvParser = new CSVReader(reader);
        Connection conn = ConnectionDB.createConnection()){

            CallableStatement statement = conn.prepareCall("{call sp_create_commerce(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "+
            "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)}");

            String[] headers = csvParser.readNext(); // Leer las cabeceras

            String[] values;
            while((values = csvParser.readNext()) != null){
                int fieldCount = 1;
                for (String valuesRow : values) {
                    statement.setString(fieldCount, valuesRow);
                    fieldCount++;
                }
                statement.addBatch();
            }

            statement.executeBatch();
            conn.close();
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Error al procesar el archivo: " + e.getMessage());
        }
        return ResponseEntity.ok().body("Datos insertados exitosamente");
    }

    /* 
     * realizar un endpoint que valide la data ingresada
     * este endpoint recibira como parametro de entrada la fecha de proceso (columna pc_processdate de la tabla commerce)
     * debe invocar un store procedure (SP) dicho SP, validara que la columna pc_nomcomred y pc_numdoc no esten vacias
     * en caso de estarlo movera los registros a una tabla "commerce_quarantine"
    */

    /* 
     * realizar un endpoint que imprima un reporte en PDF de los datos ingresado en X fecha (columna pc_processdate de la tabla commerce)
     * y de la tabla commerce_quarantine
     * se puede usar la libreria de su preferencia
    */

}

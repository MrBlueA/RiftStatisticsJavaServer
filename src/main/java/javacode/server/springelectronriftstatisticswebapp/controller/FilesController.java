package javacode.server.springelectronriftstatisticswebapp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.core.io.ResourceLoader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/file/")
public class FilesController {

    @Autowired
    private ApplicationContext context;

    // ------------- CSS ------------- //

    @GetMapping("css/style")
    public ResponseEntity<String> getDefaultStyle() {
        try (FileReader reader = new FileReader("src/main/resources/static/css/styles.css");){
            String data = getDataFromFile(reader);
            return new ResponseEntity<>(data, HttpStatus.OK);
        }catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("css/loader")
    public ResponseEntity<String> getLoaderStyle() {
        try (FileReader reader = new FileReader("src/main/resources/static/css/loader.css");){
            String data = getDataFromFile(reader);
            return new ResponseEntity<>(data, HttpStatus.OK);
        }catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // ------------- JAVASCRIPT ------------- //

    @GetMapping("js/Utilities")
    public ResponseEntity<String> getUtilitiesJS() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.valueOf("text/javascript"));
        try (FileReader reader = new FileReader("src/main/resources/static/javascript/UtilitiesScripts.js");){
            String data = getDataFromFile(reader);
            return new ResponseEntity<>(data, headers, HttpStatus.OK);
        }catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

    @GetMapping("js/Jquery")
    public ResponseEntity<String> getJqueryJS() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.valueOf("text/javascript"));
        try (FileReader reader = new FileReader("src/main/resources/static/javascript/jquery-3.6.4.min.js");){
            String data = getDataFromFile(reader);
            return new ResponseEntity<>(data, headers, HttpStatus.OK);
        }catch (Exception e) {
            e.printStackTrace();
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    // ------------- ASSETS ------------- //

    @GetMapping("assets/logo/{name}")
    public ResponseEntity<byte[]> getLogo(@PathVariable String name) {
        try {
            File file = new File("src/main/resources/assets/Logo/" + name);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("assets/championsqrrond/{id}")
    public ResponseEntity<byte[]> getChampionSqrRond(@PathVariable String id) {
        try {
            File file = new File("src/main/resources/assets/champion_squares_rounded/" + id);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("assets/championIcon/{id}")
    public ResponseEntity<byte[]> getChampionIcon(@PathVariable String id) {
        try {
            File file = new File("src/main/resources/assets/championIcons/" + id);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("assets/summIcon/{id}")
    public ResponseEntity<byte[]> getSummIcon(@PathVariable String id) {
        try {
            File file = new File("src/main/resources/assets/summIcon/" + id);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("assets/eloIcon/{elo}")
    public ResponseEntity<byte[]> getEloIcon(@PathVariable String elo) {
        try {
            File file = new File("src/main/resources/assets/elo/" + elo);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("assets/itemIcon/{id}")
    public ResponseEntity<byte[]> getItemIcon(@PathVariable String id) {
        try {
            File file = new File("src/main/resources/assets/itemIcons/" + id);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("assets/statIcon/{name}")
    public ResponseEntity<byte[]> getStatIcon(@PathVariable String name) {
        try {
            File file = new File("src/main/resources/assets/statIcons/" + name);
            return getImageEntity(file);
        }catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    private ResponseEntity<byte[]> getImageEntity (File file) throws IOException {
        if (file.exists()) {
            Path filePath = Paths.get(file.getAbsolutePath());
            byte[] fileContent = Files.readAllBytes(filePath);
            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.IMAGE_PNG);
            return new ResponseEntity<>(fileContent, headers, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    private String getDataFromFile (FileReader reader) throws IOException {
        StringBuilder stringBuilder = new StringBuilder();
        char[] buffer = new char[5120];
        int c;
        while ((c = reader.read(buffer)) > 0) {
            stringBuilder.append(buffer, 0, c);
        }
        return stringBuilder.toString();
    }
}
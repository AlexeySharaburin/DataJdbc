package ru.netology.jdbc.service;

import org.springframework.stereotype.Service;
import ru.netology.jdbc.repository.DataBaseJDBCRepository;

@Service
public class DataBaseJDBCService {

    private DataBaseJDBCRepository dataBaseJDBCRepository;

    public DataBaseJDBCService(DataBaseJDBCRepository dataBaseJDBCRepository) {
        this.dataBaseJDBCRepository = dataBaseJDBCRepository;
    }

    public String getProductName(String name) {
        return dataBaseJDBCRepository.getProductName(name);
    }
}

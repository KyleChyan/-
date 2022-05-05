package com.service;

import com.mapper.BookMapper;
import com.pojo.Books;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class BookServiceImpl implements BookService{

    @Autowired
    private BookMapper bookMapper;

    @Override
    public int insertBook(Books books) {
        return bookMapper.insertBook(books);
    }

    @Override
    public int deleteBookByID(int id) {
        return bookMapper.deleteBookByID(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books selectBookByID(int id) {
        return bookMapper.selectBookByID(id);
    }

    @Override
    public List<Books> selectBooksLike(String str) {
        return bookMapper.selectBooksLike(str);
    }

    @Override
    public List<Books> selectAllBooks() {
        return bookMapper.selectAllBooks();
    }
}

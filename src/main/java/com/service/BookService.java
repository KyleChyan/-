package com.service;

import com.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.HashMap;
import java.util.List;

public interface BookService {
    //增加一本书
    int insertBook(Books books);
    //删除一本书
    int deleteBookByID(@Param("bookId") int id);
    //更新一本书
    int updateBook(Books books);
    //查询一本书
    Books selectBookByID(@Param("bookId") int id);
    //模糊查找书
    List<Books> selectBooksLike(@Param("bookName") String str);
    //查询全部书
    List<Books> selectAllBooks();

}

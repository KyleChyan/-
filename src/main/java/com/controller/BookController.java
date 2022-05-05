package com.controller;

import com.pojo.Books;
import com.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.swing.*;
import java.util.HashMap;
import java.util.List;

@Controller
public class BookController {

    @Autowired
    private BookService bookService;
//    所有书籍页面
    @RequestMapping("/allbook")
    public String booklist(Model model){
        List<Books> booksList=bookService.selectAllBooks();
        model.addAttribute("list",booksList);
        return "allbook";
    }
//    前往添加书籍页面
    @RequestMapping("/toaddbook")
    public String toaddbook() {
        return "addbook";
    }

//    添加书籍提交
    @RequestMapping("/addbook")
    public String addbook(Books books) {
        bookService.insertBook(books);
        return "redirect:/allbook";
    }

//    前往修改书籍页面
    @RequestMapping("/toupdatebook/{bookId}")
    public String toupdatebook(@PathVariable("bookId") int id , Model model) {
        Books books =bookService.selectBookByID(id);
        model.addAttribute("SIDbooks", books);
        return "updatebook";
    }
//    修改书籍提交
    @RequestMapping("/updatebook")
    public String toupdatebook(Books books) {
        bookService.updateBook(books);
        return "redirect:/allbook";
    }

//    删除书籍提交
    @RequestMapping("/todeletebook/{bookId}")
    public String toupdatebook(@PathVariable("bookId") int id) {
        bookService.deleteBookByID(id);
        return "redirect:/allbook";

    }

//    搜索书籍提交
    @RequestMapping("/selectbook")
    public String selectbook(String str,Model model){
        List<Books> booksList=bookService.selectBooksLike(str);
        model.addAttribute("list",booksList);
        return "allbook";
    }
}

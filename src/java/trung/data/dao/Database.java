/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package trung.data.dao;

import trung.data.impl.CategoryImpl;
import trung.data.impl.ProductImpl;
import trung.data.impl.UserImpl;

/**
 *
 * @author Admin
 */
public class Database {

    public static CategoryDao getCategoryDao() {
        return new CategoryImpl();
    }

    public static ProductDao getProductDao() {
        return new ProductImpl();
    }

    public static UserDao getUserDao() {
        return new UserImpl();
    }
}

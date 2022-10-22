/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import entity.ProductHierarchy;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DEKUPAC
 */
public class ProductHierarchyDAO {

    private final Connection connection;

    public ProductHierarchyDAO(Connection connection) {
        this.connection = connection;
    }

    public int saveCategory(ProductHierarchy productHierarchy) {
        int status = 0;
        String strInsert = "insert into ProductHierarchy(ProductID,Quantity,Price) values(?,?,?)";
        try {
            PreparedStatement ps
                    = connection.prepareStatement(strInsert);
            ps.setInt(1, productHierarchy.getProductId());
            ps.setInt(2, productHierarchy.getQuantity());
            ps.setFloat(3, productHierarchy.getPrice());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.getMessage();
        }
        return status;
    }

    public int updateProductHierarchy(ProductHierarchy productHierarchy) {
        int status = 0;
        String strUpdate = "update ProductHierarchy set Price=? where ProductID=? and Quantity=?";
        try {
            PreparedStatement ps = connection.prepareStatement(strUpdate);
            ps.setFloat(1, productHierarchy.getPrice());
            ps.setInt(2, productHierarchy.getProductId());
            ps.setInt(3, productHierarchy.getQuantity());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.getMessage();
        }
        return status;
    }

    public int deleteProductHierarchy(ProductHierarchy productHierarchy) {
        int status = 0;
        String strDelete = "delete from ProductHierarchy where ProductID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(strDelete);
            ps.setInt(1, productHierarchy.getProductId());
            status = ps.executeUpdate();
        } catch (SQLException e) {
            e.getMessage();
        }

        return status;
    }

    public List<ProductHierarchy> getAllProductHierarchy() {
        List<ProductHierarchy> productHierarchys = new ArrayList<>();
        String strSelectAll = "select * from ProductHierarchy";
        try {
            PreparedStatement ps = connection.prepareStatement(strSelectAll);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ProductHierarchy productHierarchy = new ProductHierarchy();
                productHierarchy.setProductId(rs.getInt("ProductID"));
                productHierarchy.setQuantity(rs.getInt("Quantity"));
                productHierarchy.setPrice(rs.getFloat("Price"));
                productHierarchys.add(productHierarchy);
            }
        } catch (SQLException e) {
            e.getMessage();
        }
        return productHierarchys;
    }

    public double getMinPriceByProductID(int productId) {
        double minPrice = 0;
        String strSelectMinPrice = "select min(price) as minPrice from ProductHierarchy where ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(strSelectMinPrice);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                minPrice = rs.getDouble("minPrice");
            }
        } catch (Exception e) {
        }
        return minPrice;
    }

    public double getMaxPriceByProductID(int productId) {
        double maxPrice = 0;
        String strSelectMinPrice = "select max(price) as maxPrice from ProductHierarchy where ProductID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(strSelectMinPrice);
            ps.setInt(1, productId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                maxPrice = rs.getDouble("maxPrice");
            }
        } catch (Exception e) {
        }
        return maxPrice;
    }
}

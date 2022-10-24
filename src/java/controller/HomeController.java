package controller;

import dao.CategoryDAO;
import dao.CityDAO;
import dao.ProductDAO;
import dao.ProductHierarchyDAO;
import dao.ProductImageDAO;
import dao.SupplierDAO;
import dbconnect.DBConnect;
import entity.Category;
import entity.Product;
import java.io.IOException;
import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomeController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Connection conn = DBConnect.getConnection();
        ProductDAO productDAO = new ProductDAO(conn);
        CategoryDAO categoryDAO = new CategoryDAO(conn);
        ProductHierarchyDAO productHierarchyDAO = new ProductHierarchyDAO(conn);
        SupplierDAO supplierDAO = new SupplierDAO(conn);
        CityDAO cityDAO = new CityDAO(conn);
        ProductImageDAO productImageDAO = new ProductImageDAO(conn);

        List<Product> allProducts = productDAO.getAllProduct();
        List<Category> allCategories = categoryDAO.getAllCategory();
        List<Product> productsByDateDesc = productDAO.getAllProductByDateDesc();
        addMaxMinPriceCityNameForProduct(productsByDateDesc, productHierarchyDAO, supplierDAO, cityDAO, productImageDAO);

        HashMap<Category, List<Product>> mapProduct = new HashMap<>();

        for (Category category : allCategories) {
            List<Product> products = productDAO.getAllProductByCateId(category.getCateId());
            mapProduct.put(category, products);
            addMaxMinPriceCityNameForProduct(products, productHierarchyDAO, supplierDAO, cityDAO, productImageDAO);
//            for (Product product : products) {
//                product.setMinPrice(productHierarchyDAO.getMinPriceByProductID(product.getProductId()));
//                product.setMaxPrice(productHierarchyDAO.getMaxPriceByProductID(product.getProductId()));
//                int cityId = supplierDAO.getSupplierById(product.getSupplierId()).getCityId();
//                product.setCityName(cityDAO.getCityById(cityId).getCityName());
//            }
        }
        addMaxMinPriceCityNameForProduct(allProducts, productHierarchyDAO, supplierDAO, cityDAO, productImageDAO);
//        for (Product product : allProducts) {
//            product.setMinPrice(productHierarchyDAO.getMinPriceByProductID(product.getProductId()));
//            product.setMaxPrice(productHierarchyDAO.getMaxPriceByProductID(product.getProductId()));
//            int cityId = supplierDAO.getSupplierById(product.getSupplierId()).getCityId();
//            product.setCityName(cityDAO.getCityById(cityId).getCityName());
//        }

        Set<Category> setCategory = mapProduct.keySet();
        request.setAttribute("mapProduct", mapProduct);
        request.setAttribute("allProducts", allProducts);
        request.setAttribute("setCategory", setCategory);
        request.setAttribute("productsByDateDesc", productsByDateDesc);

        request.getRequestDispatcher("viewsCustomer/home.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void addMaxMinPriceCityNameForProduct(List<Product> products, ProductHierarchyDAO productHierarchyDAO, SupplierDAO supplierDAO, CityDAO cityDAO, ProductImageDAO productImageDAO) {
        for (Product product : products) {
            product.setMinPrice(productHierarchyDAO.getMinPriceByProductID(product.getProductId()));
            product.setMaxPrice(productHierarchyDAO.getMaxPriceByProductID(product.getProductId()));
            int cityId = supplierDAO.getSupplierById(product.getSupplierId()).getCityId();
            product.setCityName(cityDAO.getCityById(cityId).getCityName());
            product.setMainImgPath(productImageDAO.getProductImageById(product.getProductId()).getImgPath());
            product.getMainImgPath();
            System.out.println("");
        }
    }
}

package org.example.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import org.hibernate.Hibernate;

import java.util.Objects;

@Embeddable
public class ProductcategoryId implements java.io.Serializable {
    private static final long serialVersionUID = -8509957885600675035L;
    @Column(name = "idproduct", nullable = false)
    private Integer idproduct;

    @Column(name = "idcategory", nullable = false)
    private Integer idcategory;

    public Integer getIdproduct() {
        return idproduct;
    }

    public void setIdproduct(Integer idproduct) {
        this.idproduct = idproduct;
    }

    public Integer getIdcategory() {
        return idcategory;
    }

    public void setIdcategory(Integer idcategory) {
        this.idcategory = idcategory;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
        ProductcategoryId entity = (ProductcategoryId) o;
        return Objects.equals(this.idproduct, entity.idproduct) &&
                Objects.equals(this.idcategory, entity.idcategory);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idproduct, idcategory);
    }

}
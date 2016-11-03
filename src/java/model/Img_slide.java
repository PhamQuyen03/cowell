/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author tuong
 */
public class Img_slide {
    private int id;
    private String src;
    private String stringClass;

    public Img_slide(int id, String src, String stringClass, String data) {
        this.id = id;
        this.src = src;
        this.stringClass = stringClass;
        this.data = data;
    }

    public String getStringClass() {
        return stringClass;
    }

    public void setStringClass(String stringClass) {
        this.stringClass = stringClass;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
    private  String data;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public Img_slide() {
    }
}

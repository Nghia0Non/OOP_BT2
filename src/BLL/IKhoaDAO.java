/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package BLL;

import Entity.Khoa;
import java.util.ArrayList;

/**
 *
 * @author Anonymous
 */
public interface IKhoaDAO {
    public ArrayList<Khoa> getAll();
    public Khoa addNew(Khoa khoa);
    public Khoa updateByID(Khoa khoa);
    public ArrayList<Khoa> checkID(String makhoa);
}

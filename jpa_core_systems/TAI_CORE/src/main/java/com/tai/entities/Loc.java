package com.tai.entities;

import com.tai.core.Base.IEntities;
import jakarta.persistence.*;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.List;

@Entity
@Table(name = "loc")
public class Loc implements IEntities {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @ManyToOne()
    @JoinColumn(name = "zone_id")
    private Zone zone;

    @OneToMany(mappedBy = "loc" , fetch = FetchType.EAGER)
    private List<Hotel> hotelList;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Zone getZone() {
        return zone;
    }

    public void setZone(Zone zone) {
        this.zone = zone;
    }

    @Override
    public String toString() {
        return "Loc{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", zone=" + zone +
                '}';
    }
}

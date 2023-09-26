package com.tai.entities;

import com.tai.core.Base.IEntities;
import jakarta.persistence.*;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "hotel")
@NamedNativeQuery(name = "hotel.findByZoneId", query = "SELECT * FROM hotel WHERE loc_id IN(SELECT id FROM loc WHERE zone_id = :zone_id)" , resultClass = Hotel.class)
public class Hotel implements IEntities {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "loc_id")
    private Loc loc;

    @Override
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

    public Loc getLoc() {
        return loc;
    }

    public void setLoc(Loc loc) {
        this.loc = loc;
    }

    @Override
    public String toString() {
        return "Hotel{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", loc=" + loc +
                '}';
    }
}

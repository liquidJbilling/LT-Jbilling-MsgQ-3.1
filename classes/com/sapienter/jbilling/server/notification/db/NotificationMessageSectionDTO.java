package com.sapienter.jbilling.server.notification.db;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Version;

@Entity
@TableGenerator(
        name = "notification_message_section_GEN", 
        table = "jbilling_table", 
        pkColumnName = "name", 
        valueColumnName = "next_id", 
        pkColumnValue = "notification_message_section", 
        allocationSize = 10)
@Table(name = "notification_message_section")
public class NotificationMessageSectionDTO implements Serializable {

    private int id;
    private NotificationMessageDTO notificationMessage;
    private Integer section;
    private Set<NotificationMessageLineDTO> notificationMessageLines = new HashSet<NotificationMessageLineDTO>(
            0);
    private int versionNum;

    public NotificationMessageSectionDTO() {
    }

    public NotificationMessageSectionDTO(int id) {
        this.id = id;
    }

    public NotificationMessageSectionDTO(int id,
            NotificationMessageDTO notificationMessage, Integer section,
            Set<NotificationMessageLineDTO> notificationMessageLines) {
        this.id = id;
        this.notificationMessage = notificationMessage;
        this.section = section;
        this.notificationMessageLines = notificationMessageLines;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE, generator = "notification_message_section_GEN")
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "message_id")
    public NotificationMessageDTO getNotificationMessage() {
        return this.notificationMessage;
    }

    public void setNotificationMessage(
            NotificationMessageDTO notificationMessage) {
        this.notificationMessage = notificationMessage;
    }

    @Column(name = "section")
    public Integer getSection() {
        return this.section;
    }

    public void setSection(Integer section) {
        this.section = section;
    }

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "notificationMessageSection")
    public Set<NotificationMessageLineDTO> getNotificationMessageLines() {
        return this.notificationMessageLines;
    }

    public void setNotificationMessageLines(
            Set<NotificationMessageLineDTO> notificationMessageLines) {
        this.notificationMessageLines = notificationMessageLines;
    }
    
    @Version
    @Column(name="OPTLOCK")
    public int getVersionNum() {
        return versionNum;
    }

    public void setVersionNum(int versionNum) {
        this.versionNum = versionNum;
    }

}

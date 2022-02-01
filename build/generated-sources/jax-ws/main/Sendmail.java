
package main;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for sendmail complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="sendmail">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="intoken" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="inseed" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="smtphost" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="smtpport" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="mailuser" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="mailto" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="mailsubject" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="mailtext" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sendmail", propOrder = {
    "intoken",
    "inseed",
    "smtphost",
    "smtpport",
    "mailuser",
    "mailto",
    "mailsubject",
    "mailtext"
})
public class Sendmail {

    protected String intoken;
    protected String inseed;
    protected String smtphost;
    protected String smtpport;
    protected String mailuser;
    protected String mailto;
    protected String mailsubject;
    protected String mailtext;

    /**
     * Gets the value of the intoken property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getIntoken() {
        return intoken;
    }

    /**
     * Sets the value of the intoken property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setIntoken(String value) {
        this.intoken = value;
    }

    /**
     * Gets the value of the inseed property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getInseed() {
        return inseed;
    }

    /**
     * Sets the value of the inseed property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setInseed(String value) {
        this.inseed = value;
    }

    /**
     * Gets the value of the smtphost property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSmtphost() {
        return smtphost;
    }

    /**
     * Sets the value of the smtphost property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSmtphost(String value) {
        this.smtphost = value;
    }

    /**
     * Gets the value of the smtpport property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSmtpport() {
        return smtpport;
    }

    /**
     * Sets the value of the smtpport property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSmtpport(String value) {
        this.smtpport = value;
    }

    /**
     * Gets the value of the mailuser property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailuser() {
        return mailuser;
    }

    /**
     * Sets the value of the mailuser property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailuser(String value) {
        this.mailuser = value;
    }

    /**
     * Gets the value of the mailto property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailto() {
        return mailto;
    }

    /**
     * Sets the value of the mailto property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailto(String value) {
        this.mailto = value;
    }

    /**
     * Gets the value of the mailsubject property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailsubject() {
        return mailsubject;
    }

    /**
     * Sets the value of the mailsubject property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailsubject(String value) {
        this.mailsubject = value;
    }

    /**
     * Gets the value of the mailtext property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMailtext() {
        return mailtext;
    }

    /**
     * Sets the value of the mailtext property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMailtext(String value) {
        this.mailtext = value;
    }

}

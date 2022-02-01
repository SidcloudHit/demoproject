
package main;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for sendsms_new complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="sendsms_new">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="intoken" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="inseed" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="mobileno" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="smsmsg" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="username" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="senderid" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="appid" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "sendsms_new", propOrder = {
    "intoken",
    "inseed",
    "mobileno",
    "smsmsg",
    "username",
    "senderid",
    "appid"
})
public class SendsmsNew {

    protected String intoken;
    protected String inseed;
    protected String mobileno;
    protected String smsmsg;
    protected String username;
    protected String senderid;
    protected String appid;

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
     * Gets the value of the mobileno property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getMobileno() {
        return mobileno;
    }

    /**
     * Sets the value of the mobileno property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setMobileno(String value) {
        this.mobileno = value;
    }

    /**
     * Gets the value of the smsmsg property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSmsmsg() {
        return smsmsg;
    }

    /**
     * Sets the value of the smsmsg property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSmsmsg(String value) {
        this.smsmsg = value;
    }

    /**
     * Gets the value of the username property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getUsername() {
        return username;
    }

    /**
     * Sets the value of the username property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setUsername(String value) {
        this.username = value;
    }

    /**
     * Gets the value of the senderid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getSenderid() {
        return senderid;
    }

    /**
     * Sets the value of the senderid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setSenderid(String value) {
        this.senderid = value;
    }

    /**
     * Gets the value of the appid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAppid() {
        return appid;
    }

    /**
     * Sets the value of the appid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAppid(String value) {
        this.appid = value;
    }

}

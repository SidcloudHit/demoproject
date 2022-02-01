
package main;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the main package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Sendmail_QNAME = new QName("http://main/", "sendmail");
    private final static QName _SendmailNew_QNAME = new QName("http://main/", "sendmail_new");
    private final static QName _SendmailNewResponse_QNAME = new QName("http://main/", "sendmail_newResponse");
    private final static QName _SendmailResponse_QNAME = new QName("http://main/", "sendmailResponse");
    private final static QName _Sendsms_QNAME = new QName("http://main/", "sendsms");
    private final static QName _SendsmsNew_QNAME = new QName("http://main/", "sendsms_new");
    private final static QName _SendsmsResponse_QNAME = new QName("http://main/", "sendsmsResponse");
    private final static QName _SendsmsNewResponse_QNAME = new QName("http://main/", "sendsms_newResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: main
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link SendsmsResponse }
     * 
     */
    public SendsmsResponse createSendsmsResponse() {
        return new SendsmsResponse();
    }

    /**
     * Create an instance of {@link Sendsms }
     * 
     */
    public Sendsms createSendsms() {
        return new Sendsms();
    }

    /**
     * Create an instance of {@link SendsmsNew }
     * 
     */
    public SendsmsNew createSendsmsNew() {
        return new SendsmsNew();
    }

    /**
     * Create an instance of {@link SendsmsNewResponse }
     * 
     */
    public SendsmsNewResponse createSendsmsNewResponse() {
        return new SendsmsNewResponse();
    }

    /**
     * Create an instance of {@link SendmailNew }
     * 
     */
    public SendmailNew createSendmailNew() {
        return new SendmailNew();
    }

    /**
     * Create an instance of {@link Sendmail }
     * 
     */
    public Sendmail createSendmail() {
        return new Sendmail();
    }

    /**
     * Create an instance of {@link SendmailResponse }
     * 
     */
    public SendmailResponse createSendmailResponse() {
        return new SendmailResponse();
    }

    /**
     * Create an instance of {@link SendmailNewResponse }
     * 
     */
    public SendmailNewResponse createSendmailNewResponse() {
        return new SendmailNewResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Sendmail }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendmail")
    public JAXBElement<Sendmail> createSendmail(Sendmail value) {
        return new JAXBElement<Sendmail>(_Sendmail_QNAME, Sendmail.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendmailNew }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendmail_new")
    public JAXBElement<SendmailNew> createSendmailNew(SendmailNew value) {
        return new JAXBElement<SendmailNew>(_SendmailNew_QNAME, SendmailNew.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendmailNewResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendmail_newResponse")
    public JAXBElement<SendmailNewResponse> createSendmailNewResponse(SendmailNewResponse value) {
        return new JAXBElement<SendmailNewResponse>(_SendmailNewResponse_QNAME, SendmailNewResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendmailResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendmailResponse")
    public JAXBElement<SendmailResponse> createSendmailResponse(SendmailResponse value) {
        return new JAXBElement<SendmailResponse>(_SendmailResponse_QNAME, SendmailResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Sendsms }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendsms")
    public JAXBElement<Sendsms> createSendsms(Sendsms value) {
        return new JAXBElement<Sendsms>(_Sendsms_QNAME, Sendsms.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendsmsNew }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendsms_new")
    public JAXBElement<SendsmsNew> createSendsmsNew(SendsmsNew value) {
        return new JAXBElement<SendsmsNew>(_SendsmsNew_QNAME, SendsmsNew.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendsmsResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendsmsResponse")
    public JAXBElement<SendsmsResponse> createSendsmsResponse(SendsmsResponse value) {
        return new JAXBElement<SendsmsResponse>(_SendsmsResponse_QNAME, SendsmsResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link SendsmsNewResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://main/", name = "sendsms_newResponse")
    public JAXBElement<SendsmsNewResponse> createSendsmsNewResponse(SendsmsNewResponse value) {
        return new JAXBElement<SendsmsNewResponse>(_SendsmsNewResponse_QNAME, SendsmsNewResponse.class, null, value);
    }

}

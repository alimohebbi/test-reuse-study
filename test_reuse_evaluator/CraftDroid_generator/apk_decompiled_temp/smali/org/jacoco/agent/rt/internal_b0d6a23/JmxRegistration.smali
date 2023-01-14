.class Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;
.super Ljava/lang/Object;
.source "JmxRegistration.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final JMX_NAME:Ljava/lang/String; = "org.jacoco:type=Runtime"


# instance fields
.field private final name:Ljavax/management/ObjectName;

.field private final server:Ljavax/management/MBeanServer;


# direct methods
.method constructor <init>(Lorg/jacoco/agent/rt/IAgent;)V
    .locals 3
    .param p1, "agent"    # Lorg/jacoco/agent/rt/IAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->server:Ljavax/management/MBeanServer;

    .line 36
    new-instance v0, Ljavax/management/ObjectName;

    const-string v1, "org.jacoco:type=Runtime"

    invoke-direct {v0, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->name:Ljavax/management/ObjectName;

    .line 37
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->server:Ljavax/management/MBeanServer;

    new-instance v1, Ljavax/management/StandardMBean;

    const-class v2, Lorg/jacoco/agent/rt/IAgent;

    invoke-direct {v1, p1, v2}, Ljavax/management/StandardMBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v2, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->name:Ljavax/management/ObjectName;

    invoke-interface {v0, v1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->server:Ljavax/management/MBeanServer;

    iget-object v1, p0, Lorg/jacoco/agent/rt/internal_b0d6a23/JmxRegistration;->name:Ljavax/management/ObjectName;

    invoke-interface {v0, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

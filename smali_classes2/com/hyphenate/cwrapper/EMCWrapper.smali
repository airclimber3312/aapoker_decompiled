.class public Lcom/hyphenate/cwrapper/EMCWrapper;
.super Ljava/lang/Object;
.source "EMCWrapper.java"


# static fields
.field static cWrapper:Lcom/hyphenate/cwrapper/EMCWrapper;


# instance fields
.field iType:I

.field nativeListener:J

.field wrapper:Lcom/hyphenate/wrapper/EMWrapper;


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/hyphenate/cwrapper/EMCWrapper;->iType:I

    .line 26
    iput-wide p2, p0, Lcom/hyphenate/cwrapper/EMCWrapper;->nativeListener:J

    .line 27
    new-instance p1, Lcom/hyphenate/wrapper/EMWrapper;

    invoke-direct {p1}, Lcom/hyphenate/wrapper/EMWrapper;-><init>()V

    iput-object p1, p0, Lcom/hyphenate/cwrapper/EMCWrapper;->wrapper:Lcom/hyphenate/wrapper/EMWrapper;

    .line 28
    new-instance p1, Lcom/hyphenate/cwrapper/EMCWrapperListener;

    invoke-direct {p1}, Lcom/hyphenate/cwrapper/EMCWrapperListener;-><init>()V

    sput-object p1, Lcom/hyphenate/wrapper/EMWrapperHelper;->listener:Lcom/hyphenate/wrapper/EMWrapperListener;

    return-void
.end method

.method public static cWrapper(IJ)Lcom/hyphenate/cwrapper/EMCWrapper;
    .locals 1

    .line 20
    new-instance v0, Lcom/hyphenate/cwrapper/EMCWrapper;

    invoke-direct {v0, p0, p1, p2}, Lcom/hyphenate/cwrapper/EMCWrapper;-><init>(IJ)V

    sput-object v0, Lcom/hyphenate/cwrapper/EMCWrapper;->cWrapper:Lcom/hyphenate/cwrapper/EMCWrapper;

    return-object v0
.end method


# virtual methods
.method public nativeCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/hyphenate/cwrapper/EMCWrapper;->wrapper:Lcom/hyphenate/wrapper/EMWrapper;

    new-instance v1, Lcom/hyphenate/cwrapper/EMCWrapper$1;

    invoke-direct {v1, p0, p4}, Lcom/hyphenate/cwrapper/EMCWrapper$1;-><init>(Lcom/hyphenate/cwrapper/EMCWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/hyphenate/wrapper/EMWrapper;->callSDKApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    return-void
.end method

.method public nativeGet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 85
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java: nativeGet: manager:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " jsonString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/hyphenate/cwrapper/EMCWrapper;->wrapper:Lcom/hyphenate/wrapper/EMWrapper;

    new-instance v1, Lcom/hyphenate/cwrapper/EMCWrapper$2;

    invoke-direct {v1, p0, p4}, Lcom/hyphenate/cwrapper/EMCWrapper$2;-><init>(Lcom/hyphenate/cwrapper/EMCWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/hyphenate/wrapper/EMWrapper;->callSDKApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyphenate/wrapper/callback/EMWrapperCallback;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

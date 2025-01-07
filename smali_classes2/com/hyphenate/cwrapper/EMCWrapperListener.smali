.class public Lcom/hyphenate/cwrapper/EMCWrapperListener;
.super Ljava/lang/Object;
.source "EMCWrapperListener.java"

# interfaces
.implements Lcom/hyphenate/wrapper/EMWrapperListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native callListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public onReceive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/hyphenate/cwrapper/EMCWrapperListener;->callListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class public abstract Lcom/tencent/bugly/proguard/pg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ph;


# instance fields
.field protected final EA:Lcom/tencent/bugly/proguard/pc;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/pc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/pg;->EA:Lcom/tencent/bugly/proguard/pc;

    return-void
.end method


# virtual methods
.method public iw()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

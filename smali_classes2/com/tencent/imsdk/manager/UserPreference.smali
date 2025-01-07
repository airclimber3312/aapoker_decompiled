.class public Lcom/tencent/imsdk/manager/UserPreference;
.super Ljava/lang/Object;
.source "UserPreference.java"


# instance fields
.field private enableSignaling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnableSignaling()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/tencent/imsdk/manager/UserPreference;->enableSignaling:Z

    return v0
.end method

.method public setEnableSignaling(Ljava/lang/Boolean;)V
    .locals 0

    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/imsdk/manager/UserPreference;->enableSignaling:Z

    return-void
.end method

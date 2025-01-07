.class public Lcom/tencent/bugly/proguard/mk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected Ad:Ljava/lang/String;

.field protected ri:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/mk;->Ad:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final gZ()Z
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/mk;->ri:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/proguard/mk;->ri:I

    return v0
.end method

.method public final ha()V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/bugly/proguard/mk;->ri:I

    return-void
.end method

.method public final hb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/mk;->Ad:Ljava/lang/String;

    return-object v0
.end method

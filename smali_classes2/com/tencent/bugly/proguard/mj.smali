.class public final Lcom/tencent/bugly/proguard/mj;
.super Lcom/tencent/bugly/proguard/mf;


# instance fields
.field private final Ac:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/bugly/proguard/mf;-><init>(I)V

    iput-object p2, p0, Lcom/tencent/bugly/proguard/mj;->Ac:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final match(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/mj;->Ac:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

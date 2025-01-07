.class public final Lcom/tencent/bugly/proguard/mg;
.super Lcom/tencent/bugly/proguard/mf;


# instance fields
.field private final zY:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tencent/bugly/proguard/mf;-><init>(I)V

    iput-object p1, p0, Lcom/tencent/bugly/proguard/mg;->zY:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final match(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/mg;->zY:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4, p1}, Lcom/tencent/bugly/proguard/kw;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

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

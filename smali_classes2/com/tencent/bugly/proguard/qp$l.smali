.class final Lcom/tencent/bugly/proguard/qp$l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/bugly/proguard/ql;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/qp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "l"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/proguard/bx;->a(Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;)V

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tencent/bugly/proguard/bx;->az()Lcom/tencent/bugly/proguard/bx;

    move-result-object v1

    check-cast p1, Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;

    invoke-virtual {v1, p1}, Lcom/tencent/bugly/proguard/bx;->a(Lcom/tencent/bugly/common/sp/ISharedPreferencesProvider;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

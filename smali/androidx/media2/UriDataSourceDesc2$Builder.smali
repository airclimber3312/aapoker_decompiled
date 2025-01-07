.class public final Landroidx/media2/UriDataSourceDesc2$Builder;
.super Landroidx/media2/DataSourceDesc2$Builder;
.source "UriDataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/UriDataSourceDesc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/DataSourceDesc2$Builder<",
        "Landroidx/media2/UriDataSourceDesc2$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field mUri:Landroid/net/Uri;

.field mUriContext:Landroid/content/Context;

.field mUriCookies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation
.end field

.field mUriHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Landroidx/media2/DataSourceDesc2$Builder;-><init>()V

    const-string v0, "context cannot be null"

    .line 127
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "uri cannot be null"

    .line 128
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iput-object p2, p0, Landroidx/media2/UriDataSourceDesc2$Builder;->mUri:Landroid/net/Uri;

    .line 130
    iput-object p1, p0, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Landroidx/media2/DataSourceDesc2$Builder;-><init>()V

    const-string v0, "context cannot be null"

    .line 154
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 157
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 158
    instance-of v0, v0, Ljava/net/CookieManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The cookie handler has to be of CookieManager type when cookies are provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 165
    :cond_1
    :goto_0
    iput-object p2, p0, Landroidx/media2/UriDataSourceDesc2$Builder;->mUri:Landroid/net/Uri;

    if-eqz p3, :cond_2

    .line 167
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p2, p0, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriHeader:Ljava/util/Map;

    :cond_2
    if-eqz p4, :cond_3

    .line 170
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriCookies:Ljava/util/List;

    .line 172
    :cond_3
    iput-object p1, p0, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/UriDataSourceDesc2;
    .locals 1

    .line 180
    new-instance v0, Landroidx/media2/UriDataSourceDesc2;

    invoke-direct {v0, p0}, Landroidx/media2/UriDataSourceDesc2;-><init>(Landroidx/media2/UriDataSourceDesc2$Builder;)V

    return-object v0
.end method

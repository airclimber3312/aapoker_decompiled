.class public Landroidx/media2/UriDataSourceDesc2;
.super Landroidx/media2/DataSourceDesc2;
.source "UriDataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/UriDataSourceDesc2$Builder;
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
.method constructor <init>(Landroidx/media2/UriDataSourceDesc2$Builder;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroidx/media2/DataSourceDesc2;-><init>(Landroidx/media2/DataSourceDesc2$Builder;)V

    .line 53
    iget-object v0, p1, Landroidx/media2/UriDataSourceDesc2$Builder;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUri:Landroid/net/Uri;

    .line 54
    iget-object v0, p1, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriHeader:Ljava/util/Map;

    iput-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUriHeader:Ljava/util/Map;

    .line 55
    iget-object v0, p1, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriCookies:Ljava/util/List;

    iput-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUriCookies:Ljava/util/List;

    .line 56
    iget-object p1, p1, Landroidx/media2/UriDataSourceDesc2$Builder;->mUriContext:Landroid/content/Context;

    iput-object p1, p0, Landroidx/media2/UriDataSourceDesc2;->mUriContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 73
    iget-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getUriContext()Landroid/content/Context;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUriContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUriCookies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/HttpCookie;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUriCookies:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media2/UriDataSourceDesc2;->mUriCookies:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getUriHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Landroidx/media2/UriDataSourceDesc2;->mUriHeader:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/media2/UriDataSourceDesc2;->mUriHeader:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

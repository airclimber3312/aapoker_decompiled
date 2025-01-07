.class public Landroidx/media2/CallbackDataSourceDesc2;
.super Landroidx/media2/DataSourceDesc2;
.source "CallbackDataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/CallbackDataSourceDesc2$Builder;
    }
.end annotation


# instance fields
.field mCallbackDataSource2:Landroidx/media2/CallbackDataSource2;


# direct methods
.method constructor <init>(Landroidx/media2/CallbackDataSourceDesc2$Builder;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/media2/DataSourceDesc2;-><init>(Landroidx/media2/DataSourceDesc2$Builder;)V

    .line 36
    iget-object p1, p1, Landroidx/media2/CallbackDataSourceDesc2$Builder;->mCallbackDataSource2:Landroidx/media2/CallbackDataSource2;

    iput-object p1, p0, Landroidx/media2/CallbackDataSourceDesc2;->mCallbackDataSource2:Landroidx/media2/CallbackDataSource2;

    return-void
.end method


# virtual methods
.method public getCallbackDataSource2()Landroidx/media2/CallbackDataSource2;
    .locals 1

    .line 53
    iget-object v0, p0, Landroidx/media2/CallbackDataSourceDesc2;->mCallbackDataSource2:Landroidx/media2/CallbackDataSource2;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

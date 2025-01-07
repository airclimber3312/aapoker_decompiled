.class public final Landroidx/media2/CallbackDataSourceDesc2$Builder;
.super Landroidx/media2/DataSourceDesc2$Builder;
.source "CallbackDataSourceDesc2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/CallbackDataSourceDesc2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/DataSourceDesc2$Builder<",
        "Landroidx/media2/CallbackDataSourceDesc2$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field mCallbackDataSource2:Landroidx/media2/CallbackDataSource2;


# direct methods
.method public constructor <init>(Landroidx/media2/CallbackDataSource2;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroidx/media2/DataSourceDesc2$Builder;-><init>()V

    .line 69
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Landroidx/media2/CallbackDataSourceDesc2$Builder;->mCallbackDataSource2:Landroidx/media2/CallbackDataSource2;

    return-void
.end method


# virtual methods
.method public build()Landroidx/media2/CallbackDataSourceDesc2;
    .locals 1

    .line 77
    new-instance v0, Landroidx/media2/CallbackDataSourceDesc2;

    invoke-direct {v0, p0}, Landroidx/media2/CallbackDataSourceDesc2;-><init>(Landroidx/media2/CallbackDataSourceDesc2$Builder;)V

    return-object v0
.end method

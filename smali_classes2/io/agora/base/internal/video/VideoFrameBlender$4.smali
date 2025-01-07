.class Lio/agora/base/internal/video/VideoFrameBlender$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/base/internal/video/VideoFrameBlender;->updateVideoSourceLayout(Lio/agora/base/internal/video/VideoSourceLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/agora/base/internal/video/VideoSourceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/base/internal/video/VideoFrameBlender;


# direct methods
.method constructor <init>(Lio/agora/base/internal/video/VideoFrameBlender;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/agora/base/internal/video/VideoFrameBlender$4;->this$0:Lio/agora/base/internal/video/VideoFrameBlender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lio/agora/base/internal/video/VideoSourceLayout;Lio/agora/base/internal/video/VideoSourceLayout;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout1",
            "layout2"
        }
    .end annotation

    invoke-virtual {p1}, Lio/agora/base/internal/video/VideoSourceLayout;->getZorder()I

    move-result p1

    invoke-virtual {p2}, Lio/agora/base/internal/video/VideoSourceLayout;->getZorder()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "layout1",
            "layout2"
        }
    .end annotation

    check-cast p1, Lio/agora/base/internal/video/VideoSourceLayout;

    check-cast p2, Lio/agora/base/internal/video/VideoSourceLayout;

    invoke-virtual {p0, p1, p2}, Lio/agora/base/internal/video/VideoFrameBlender$4;->compare(Lio/agora/base/internal/video/VideoSourceLayout;Lio/agora/base/internal/video/VideoSourceLayout;)I

    move-result p1

    return p1
.end method

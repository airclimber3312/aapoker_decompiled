.class public Lio/agora/base/internal/video/VideoSourceLayout;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;
    }
.end annotation


# instance fields
.field private cropped_height:I

.field private cropped_width:I

.field private cropped_x:I

.field private cropped_y:I

.field private dest_height:I

.field private dest_width:I

.field private mirror_x:Z

.field private mirror_y:Z

.field private position_x:I

.field private position_y:I

.field private rotation:I

.field private source_id:Ljava/lang/String;

.field private videoSourceType:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

.field private z_order:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIIIIZZII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source_id",
            "position_x",
            "position_y",
            "cropped_x",
            "cropped_y",
            "cropped_width",
            "cropped_height",
            "dest_width",
            "dest_height",
            "z_order",
            "mirror_x",
            "mirror_y",
            "rotation",
            "videoSourceType"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->UNKNOWN:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    iput-object v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->videoSourceType:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    iput-object p1, p0, Lio/agora/base/internal/video/VideoSourceLayout;->source_id:Ljava/lang/String;

    iput p2, p0, Lio/agora/base/internal/video/VideoSourceLayout;->position_x:I

    iput p3, p0, Lio/agora/base/internal/video/VideoSourceLayout;->position_y:I

    iput p4, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_x:I

    iput p5, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_y:I

    iput p6, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_width:I

    iput p7, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_height:I

    iput p8, p0, Lio/agora/base/internal/video/VideoSourceLayout;->dest_width:I

    iput p9, p0, Lio/agora/base/internal/video/VideoSourceLayout;->dest_height:I

    iput-boolean p11, p0, Lio/agora/base/internal/video/VideoSourceLayout;->mirror_x:Z

    iput-boolean p12, p0, Lio/agora/base/internal/video/VideoSourceLayout;->mirror_y:Z

    iput p13, p0, Lio/agora/base/internal/video/VideoSourceLayout;->rotation:I

    iput p10, p0, Lio/agora/base/internal/video/VideoSourceLayout;->z_order:I

    invoke-static {}, Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;->values()[Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    move-result-object p1

    aget-object p1, p1, p14

    iput-object p1, p0, Lio/agora/base/internal/video/VideoSourceLayout;->videoSourceType:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    return-void
.end method


# virtual methods
.method public getCroppedHeight()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_height:I

    return v0
.end method

.method public getCroppedWidth()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_width:I

    return v0
.end method

.method public getCroppedX()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_x:I

    return v0
.end method

.method public getCroppedY()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->cropped_y:I

    return v0
.end method

.method public getDestHeight()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->dest_height:I

    return v0
.end method

.method public getDestWidth()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->dest_width:I

    return v0
.end method

.method public getPositionX()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->position_x:I

    return v0
.end method

.method public getPositionY()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->position_y:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->rotation:I

    return v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->source_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSourceType()Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;
    .locals 1

    iget-object v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->videoSourceType:Lio/agora/base/internal/video/VideoSourceLayout$VideoSourceType;

    return-object v0
.end method

.method public getZorder()I
    .locals 1

    iget v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->z_order:I

    return v0
.end method

.method public isMirrorX()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->mirror_x:Z

    return v0
.end method

.method public isMirrorY()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/base/internal/video/VideoSourceLayout;->mirror_y:Z

    return v0
.end method

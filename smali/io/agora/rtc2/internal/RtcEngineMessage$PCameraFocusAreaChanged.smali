.class public Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;
.super Lio/agora/rtc2/internal/Marshallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc2/internal/RtcEngineMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCameraFocusAreaChanged"
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/Marshallable;-><init>()V

    return-void
.end method


# virtual methods
.method getRect()Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->x:I

    iget v2, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->y:I

    iget v3, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->width:I

    add-int/2addr v3, v1

    iget v4, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->height:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public marshall()[B
    .locals 1

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->x:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->y:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->width:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->pushInt(I)V

    iget v0, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->height:I

    invoke-virtual {p0, v0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->pushInt(I)V

    invoke-super {p0}, Lio/agora/rtc2/internal/Marshallable;->marshall()[B

    move-result-object v0

    return-object v0
.end method

.method public unmarshall([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    invoke-super {p0, p1}, Lio/agora/rtc2/internal/Marshallable;->unmarshall([B)V

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->x:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->y:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->width:I

    invoke-virtual {p0}, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->popInt()I

    move-result p1

    iput p1, p0, Lio/agora/rtc2/internal/RtcEngineMessage$PCameraFocusAreaChanged;->height:I

    return-void
.end method

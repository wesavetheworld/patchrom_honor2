.class Lcom/android/hwcamera/hwui/SubPopupWindows$1;
.super Ljava/lang/Object;
.source "SubPopupWindows.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/hwcamera/hwui/SubPopupWindows;->initHaveKeySettingView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;


# direct methods
.method constructor <init>(Lcom/android/hwcamera/hwui/SubPopupWindows;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$1;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/hwcamera/hwui/SubPopupWindows$1;->this$0:Lcom/android/hwcamera/hwui/SubPopupWindows;

    #getter for: Lcom/android/hwcamera/hwui/SubPopupWindows;->mParentSuperPanel:Lcom/android/hwcamera/hwui/SuperPanel;
    invoke-static {v0}, Lcom/android/hwcamera/hwui/SubPopupWindows;->access$000(Lcom/android/hwcamera/hwui/SubPopupWindows;)Lcom/android/hwcamera/hwui/SuperPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/hwcamera/hwui/SuperPanel;->updatePanelIdleState()Z

    .line 121
    const/4 v0, 0x0

    return v0
.end method

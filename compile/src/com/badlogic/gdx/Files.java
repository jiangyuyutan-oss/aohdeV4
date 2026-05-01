
package com.badlogic.gdx;
import com.badlogic.gdx.files.FileHandle;
public interface Files {
    FileHandle local(String path);
    FileHandle internal(String path);
}
